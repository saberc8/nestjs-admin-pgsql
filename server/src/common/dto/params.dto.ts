import { IsOptional, IsString } from 'class-validator';

export class ParamsDto {
  /* 开始日期 */
  @IsOptional()
  @IsString()
  beginTime?: string;

  /* 结束日期 */
  @IsOptional()
  @IsString()
  endTime?: string;
}
