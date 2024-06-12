import { IsString } from 'class-validator';

export class ReqRegisterDto {
  /* 用户名 */
  @IsString()
  username: string;

  /* 密码 */
  @IsString()
  password: string;

  /* 确认密码 */
  @IsString()
  confirmPassword: string;

  /* 验证码 */
  @IsString()
  code: string;

  /* 验证码唯一标识 */
  @IsString()
  uuid: string;
}
