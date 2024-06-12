import { ExecutionContext, Injectable } from '@nestjs/common';
import { Reflector } from '@nestjs/core';
import { AuthGuard } from '@nestjs/passport';
import { Observable } from 'node_modules/rxjs/dist/types';
import { PUBLIC_KEY } from '../contants/decorator.contant';
import { ApiException } from '../exceptions/api.exception';

@Injectable()
export class JwtAuthGuard extends AuthGuard('jwt') {
  constructor(private reflector: Reflector) {
    super();
  }
  canActivate(
    context: ExecutionContext,
  ): boolean | Promise<boolean> | Observable<boolean> {
    // getHandler 值将覆盖 getClass上面的值
    const noInterception = this.reflector.getAllAndOverride(PUBLIC_KEY, [
      context.getHandler(),
      context.getClass(),
    ]);
    if (noInterception) return true;
    return super.canActivate(context);
  }

  /* 主动处理错误 */
  handleRequest(err, user) {
    if (err || !user || !user.userName) {
      throw err || new ApiException('登录状态已过期', 401);
    }
    // 返回值会被挂载到request的user上
    return user;
  }
}
