import {
  PipeTransform,
  Injectable,
  ArgumentMetadata,
  Inject,
} from '@nestjs/common';
import { REQUEST } from '@nestjs/core';
import { SysUser } from '@prisma/client';
import { DataBaseDto } from '../dto/data-base.dto';
import dayjs from 'dayjs';

@Injectable()
export class CreateMessagePipe implements PipeTransform {
  constructor(@Inject(REQUEST) private readonly request: any) {}
  transform(value: DataBaseDto, metadata: ArgumentMetadata) {
    const user: SysUser = this.request.user;
    value.createBy = user.userName;
    value.createTime = dayjs().format();
    return value;
  }
}
