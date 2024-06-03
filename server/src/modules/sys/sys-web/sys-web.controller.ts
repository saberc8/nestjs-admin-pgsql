import { Body, Controller, Delete, Get, Post } from '@nestjs/common';
import { SysWebService } from './sys-web.service';
import { User, UserEnum } from 'src/common/decorators/user.decorator';
import { DataObj } from 'src/common/class/data-obj.class';
import { CreateMessagePipe } from 'src/common/pipes/createmessage.pipe';
import { AddSysWebDto } from './dto/req-sys-web.dto';

@Controller('system/web')
export class SysWebController {
  constructor(private readonly sysWebService: SysWebService) {}

  /* 查询一条 */
  @Get()
  async getOne(
    @User(UserEnum.userId) userId: number,
    @User(UserEnum.userName) userName: string,
  ) {
    const config = await this.sysWebService.getOne(userId, userName);
    return DataObj.create(config);
  }

  @Post()
  async add(
    @Body(CreateMessagePipe) addSysWebDto: AddSysWebDto,
    @User(UserEnum.userId) userId: number,
    @User(UserEnum.userName) userName: string,
  ) {
    await this.sysWebService.add(userId, userName, addSysWebDto);
  }

  @Delete()
  async delete(
    @User(UserEnum.userId) userId: number,
    @User(UserEnum.userName) userName: string,
  ) {
    await this.sysWebService.delete(userId, userName);
  }
}
