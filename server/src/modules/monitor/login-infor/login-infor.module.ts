import { Global, Module } from '@nestjs/common';
import { LoginInforService } from './login-infor.service';
import { LoginInforController } from './login-infor.controller';

@Global()
@Module({
  providers: [LoginInforService],
  exports: [LoginInforService],
  controllers: [LoginInforController],
})
export class LoginInforModule {}
