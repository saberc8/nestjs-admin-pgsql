/*
https://docs.nestjs.com/controllers#controllers
*/

import {
  Controller,
  Post,
  Query,
  UploadedFile,
  UseInterceptors,
  Body
} from '@nestjs/common';
import { Public } from 'src/common/decorators/public.decorator';
import { FileInterceptor } from '@nestjs/platform-express';
import { UploadService } from './upload.service';
@Controller('common')
export class UploadController {
  constructor(private uploadService: UploadService) {}
  // 七牛云上传
  @Post('upload/qiniu')
  @Public()
  @UseInterceptors(FileInterceptor('file'))
  async uploadFile(@UploadedFile() file, @Body() fileInfo: any) {
    const data = await this.uploadService.uploadFile(file);
    return {
      errcode: 200,
      data,
    };
  }
}
