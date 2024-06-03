import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  Post,
  Put,
  Query,
} from '@nestjs/common';
import { SysDeptService } from './sys-dept.service';
import { RepeatSubmit } from 'src/common/decorators/repeat-submit.decorator';
import { RequiresPermissions } from 'src/common/decorators/requires-permissions.decorator';
import { CreateMessagePipe } from 'src/common/pipes/createmessage.pipe';
import { BusinessTypeEnum, Log } from 'src/common/decorators/log.decorator';
import { DataObj } from 'src/common/class/data-obj.class';
import { UpdateMessagePipe } from 'src/common/pipes/updatemessage.pipe';
import {
  AddSysDeptDto,
  GetSysDeptListDto,
  UpdateSysDeptDto,
} from './dto/req-sys-dept.dto';
import { User, UserEnum } from 'src/common/decorators/user.decorator';
import { DataScope } from 'src/common/type/data-scope.type';

@Controller('system/dept')
export class SysDeptController {
  constructor(private readonly sysDeptService: SysDeptService) {}
  /* 新增 */
  @Post()
  @RepeatSubmit()
  @Log({
    title: '部门管理',
    businessType: BusinessTypeEnum.insert,
  })
  @RequiresPermissions('system:dept:add')
  async add(@Body(CreateMessagePipe) addSysDeptDto: AddSysDeptDto) {
    await this.sysDeptService.add(addSysDeptDto);
  }

  /* 列表查询 */
  @Get('list')
  @RequiresPermissions('system:dept:query')
  async list(
    @Query() getSysDeptListDto: GetSysDeptListDto,
    @User(UserEnum.dataScope) dataScope: DataScope,
  ) {
    return await this.sysDeptService.list(getSysDeptListDto, dataScope);
  }

  /* 查询出去这个id及其子部门外的其他部门 */
  @Get('list/exclude/:deptId')
  @RequiresPermissions('system:dept:edit')
  async listExclude(@Param('deptId') deptId: number) {
    return await this.sysDeptService.listExclude(deptId);
  }

  /* 通过id查询 */
  @Get(':deptId')
  @RequiresPermissions('system:dept:query')
  async oneByDeptId(@Param('deptId') deptId: number) {
    const post = await this.sysDeptService.oneByDeptId(deptId);
    return DataObj.create(post);
  }

  /* 更新 */
  @Put()
  @RepeatSubmit()
  @RequiresPermissions('system:dept:edit')
  @Log({
    title: '部门管理',
    businessType: BusinessTypeEnum.update,
  })
  async update(@Body(UpdateMessagePipe) updateSysDeptDto: UpdateSysDeptDto) {
    console.log(updateSysDeptDto, '走到这里 update');
    await this.sysDeptService.update(updateSysDeptDto);
  }

  /* 删除 */
  @Delete(':deptIds')
  @RequiresPermissions('system:dept:remove')
  @Log({
    title: '部门管理',
    businessType: BusinessTypeEnum.delete,
  })
  async delete(@Param('deptIds') deptId: number) {
    await this.sysDeptService.delete(deptId);
  }
}
