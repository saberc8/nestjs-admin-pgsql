import { Module } from '@nestjs/common';
import { SysTableController } from './sys-table.controller';
import { SysTableService } from './sys-table.service';

@Module({
  controllers: [SysTableController],
  providers: [SysTableService],
})
export class SysTableModule {}
