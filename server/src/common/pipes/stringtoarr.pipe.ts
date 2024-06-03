import { PipeTransform, Injectable, ArgumentMetadata } from '@nestjs/common';

/* 该管道必须手动实例化 */
@Injectable()
export class StringToArrPipe implements PipeTransform {
  constructor(private readonly func: Function = Number) {}
  transform(value: string, { metatype }: ArgumentMetadata) {
    if (!metatype || metatype !== Array) {
      return value;
    } else {
      let result = value.split(',').map((item) => this.func(item));
      return result;
    }
  }
}
