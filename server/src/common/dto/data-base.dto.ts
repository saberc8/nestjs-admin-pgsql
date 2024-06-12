import { IsOptional, IsString } from 'class-validator';
import { Excel } from 'src/modules/common/excel/excel.decorator';
export class DataBaseDto {
  @Excel({ name: '创建人', sort: 100 })
  createBy?: string;
  @Excel({ name: '创建时间', sort: 101, dateFormat: 'YYYY-MM-DD HH:mm:ss' })
  createTime?: Date | string;
  @Excel({ name: '更新人', sort: 102 })
  updateBy?: string;
  @Excel({ name: '更新时间', sort: 103, dateFormat: 'YYYY-MM-DD HH:mm:ss' })
  updateTime?: Date | string;
}
