import { Module } from '@nestjs/common';
import { OperLogModule } from './oper-log/oper-log.module';
import { LoginInforModule } from './login-infor/login-infor.module';
import { OnlineModule } from './online/online.module';
import { JobModule } from './job/job.module';
import { CacheModule } from './cache/cache.module';
import { ServerModule } from './server/server.module';

@Module({
  imports: [
    OperLogModule,
    LoginInforModule,
    OnlineModule,
    JobModule,
    CacheModule,
    ServerModule,
  ],
})
export class MonitorModule {}
