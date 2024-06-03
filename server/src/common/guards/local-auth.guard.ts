import { ExecutionContext, Injectable } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { Observable } from 'rxjs';
import { ApiException } from '../exceptions/api.exception';
import { LoginInforService } from 'src/modules/monitor/login-infor/login-infor.service';

@Injectable()
export class LocalAuthGuard extends AuthGuard('local') {
  constructor(private readonly loginInforService: LoginInforService) {
    super();
  }
  context: ExecutionContext;
  canActivate(
    context: ExecutionContext,
  ): boolean | Promise<boolean> | Observable<boolean> {
    this.context = context;
    return super.canActivate(context);
  }

  /* 主动处理错误 */
  handleRequest(err, user, info) {
    if (err || !user) {
      const request = this.context.switchToHttp().getRequest();
      this.loginInforService.addLoginInfor(request, err.response, '1');
      throw err || new ApiException('用户名或密码错误');
    }
    // 返回值会被挂载到request的user上
    return user;
  }
}
