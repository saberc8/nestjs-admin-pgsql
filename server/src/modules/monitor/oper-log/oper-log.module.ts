import { Global, Module } from '@nestjs/common';
import { OperLogService } from './oper-log.service';
import { OperLogController } from './oper-log.controller';

@Global()
@Module({
  providers: [OperLogService],
  exports: [OperLogService],
  controllers: [OperLogController],
})
export class OperLogModule {}
