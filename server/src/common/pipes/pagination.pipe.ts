import { PipeTransform, Injectable } from '@nestjs/common';
import { PaginationDto } from '../dto/pagination.dto';

@Injectable()
export class PaginationPipe implements PipeTransform {
  transform(data: PaginationDto) {
    data.skip = data.pageNum ? (data.pageNum - 1) * data.pageSize : undefined;
    data.take = data.pageSize ?? undefined;
    return data;
  }
}
