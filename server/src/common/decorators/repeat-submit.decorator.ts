import { SetMetadata } from '@nestjs/common';
import { REPEATSUBMIT_METADATA } from '../contants/decorator.contant';

export class RepeatSubmitOption {
  interval?: number = 1; //默认1s
  message?: string = '操作过于频繁';
}

export const RepeatSubmit = (option?: RepeatSubmitOption) => {
  const repeatSubmitOption = Object.assign(new RepeatSubmitOption(), option);
  return SetMetadata(REPEATSUBMIT_METADATA, repeatSubmitOption);
};
