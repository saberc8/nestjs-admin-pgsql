import { Controller, Delete, Get, Param, Query } from '@nestjs/common';
import { OnlineService } from './online.service';
import { RequiresPermissions } from 'src/common/decorators/requires-permissions.decorator';
import { OnlineList } from './dto/req-online.dto';
import { BusinessTypeEnum, Log } from 'src/common/decorators/log.decorator';

@Controller('monitor/online')
export class OnlineController {
  constructor(private readonly onlineService: OnlineService) {}

  @Get('list')
  @RequiresPermissions('monitor:online:query')
  async list(@Query() onlineList: OnlineList) {
    const rows = await this.onlineService.list(onlineList);
    return { rows, total: rows.length };
  }

  /* 强退 */
  @Delete(':tokenKey')
  @RequiresPermissions('monitor:online:forceLogout')
  @Log({
    title: '强退用户',
    businessType: BusinessTypeEnum.force,
  })
  async deletOnline(@Param('tokenKey') tokenKey: string) {
    await this.onlineService.deletOnline(tokenKey);
  }
}
