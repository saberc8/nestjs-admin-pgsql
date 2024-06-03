import { IsBoolean, IsOptional, IsString } from 'class-validator';
import { DataBaseDto } from 'src/common/dto/data-base.dto';

export class AddSysWebDto extends DataBaseDto {
  @IsOptional()
  @IsString()
  theme?: string;

  @IsOptional()
  @IsString()
  sideTheme?: string;

  @IsOptional()
  @IsBoolean()
  topNav?: boolean;

  @IsOptional()
  @IsBoolean()
  tagsView?: boolean;

  @IsOptional()
  @IsBoolean()
  fixedHeader?: boolean;

  @IsOptional()
  @IsBoolean()
  sidebarLogo?: boolean;

  @IsOptional()
  @IsBoolean()
  dynamicTitle?: boolean;

  createBy: string;
}
