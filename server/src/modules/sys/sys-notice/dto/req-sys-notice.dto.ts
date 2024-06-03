import { IsNumber, IsOptional, IsString } from 'class-validator';
import { DataBaseDto } from 'src/common/dto/data-base.dto';
import { PaginationDto } from 'src/common/dto/pagination.dto';

/* 分页查询 */
export class GetSysNoticeListDto extends PaginationDto {
  /* 广告标题 */
  @IsOptional()
  @IsString()
  noticeTitle: string;

  /* 创建人 */
  @IsOptional()
  @IsString()
  createBy: string;

  /* 公告类型 */
  @IsOptional()
  @IsString()
  noticeType: string;
}

/* 新增 */
export class AddSysNoticeDto extends DataBaseDto {
  @IsString()
  noticeTitle: string;

  @IsString()
  noticeType: string;

  @IsOptional()
  @IsString()
  noticeContent: string;

  @IsString()
  status: string;
}

/* 编辑 */
export class UpdateSysNoticeDto extends AddSysNoticeDto {
  @IsNumber()
  noticeId: number;
}
