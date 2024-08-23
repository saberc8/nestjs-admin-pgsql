import { SetMetadata } from '@nestjs/common';
import { PUBLIC_KEY, WEIXINAUTH_KEY } from '../contants/decorator.contant';

// 设置不进行 jwt 校验
// q: SetMetadata 是什么？
// a: SetMetadata 是一个装饰器工厂，用于将元数据设置在处理程序的方法、参数或类上。
export const Public = () => SetMetadata(PUBLIC_KEY, true);
// WeixinAuth 根据 openid
export const WeixinAuth = () => SetMetadata(WEIXINAUTH_KEY, true);