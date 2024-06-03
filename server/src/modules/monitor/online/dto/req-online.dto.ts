import { IsOptional, IsString } from 'class-validator';

export class OnlineList {
  /* 登录地址 */
  @IsOptional()
  @IsString()
  ipaddr?: string;

  /* 用户名 */
  @IsOptional()
  @IsString()
  userName?: string;
}
