import { InjectRedis } from '@nestjs-modules/ioredis';
import { Injectable, CanActivate, ExecutionContext } from '@nestjs/common';
import { Reflector } from '@nestjs/core';
import { PERMISSION_KEY_METADATA } from '../contants/decorator.contant';
import { PermissionObj } from '../decorators/requires-permissions.decorator';
import { LogicalEnum } from '../enums/logical.enum';
import { ApiException } from '../exceptions/api.exception';
import Redis from 'ioredis';

@Injectable()
export class PermissionAuthGuard implements CanActivate {
  constructor(
    private reflector: Reflector,
    @InjectRedis() private readonly redis: Redis,
  ) {}
  async canActivate(context: ExecutionContext) {
    const permissionObj = this.reflector.getAllAndOverride<PermissionObj>(
      PERMISSION_KEY_METADATA,
      [context.getHandler(), context.getClass()],
    );
    if (!permissionObj || !permissionObj.permissionArr.length) return true;
    const request = context.switchToHttp().getRequest();
    const user = request.user;
    const permissions = user?.permissions || [];
    if (permissions.includes('*:*:*')) return true;
    let result = false;
    if (permissionObj.logical === LogicalEnum.or) {
      result = permissionObj.permissionArr.some((userPermission) => {
        return permissions.includes(userPermission);
      });
    } else if (permissionObj.logical === LogicalEnum.and) {
      result = permissionObj.permissionArr.every((userPermission) => {
        return permissions.includes(userPermission);
      });
    }
    if (!result) throw new ApiException('暂无权限访问，请联系管理员');
    return result;
  }
}
