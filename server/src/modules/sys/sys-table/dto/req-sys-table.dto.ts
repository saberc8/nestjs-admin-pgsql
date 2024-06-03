import { IsString } from 'class-validator';
import { DataBaseDto } from 'src/common/dto/data-base.dto';

/* 请求表格配置 */
export class GetTableDto {
  @IsString()
  tableId: string;
}

/* 新增或者编辑表格配置 */
export class AddSysTableDto extends DataBaseDto {
  @IsString()
  tableId: string;

  @IsString()
  tableJsonConfig: string;

  createBy: string;
}
