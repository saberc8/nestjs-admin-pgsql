import { createParamDecorator, ExecutionContext } from '@nestjs/common';
import { UserInfo } from '../type/user-info.type';

export enum UserEnum {
  'userId' = 'userId',
  'userName' = 'userName',
  'nickName' = 'nickName',
  'deptId' = 'deptId',
  'permissions' = 'permissions',
  'roles' = 'roles',
  'dataScope' = 'dataScope',
}

// 设置在参数中 获取 哪些用户信息
export const User = createParamDecorator(
  (data: UserEnum, ctx: ExecutionContext) => {
    const request = ctx.switchToHttp().getRequest();
    const user: UserInfo = request.user;
    return data ? user && user[data] : user;
  },
);
