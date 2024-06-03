import { SetMetadata } from '@nestjs/common';
import { REOEATSUBMIT_METADATA } from '../contants/decorator.contant';

export class RepeatSubmitOption {
  interval?: number = 1; //默认1s
  message?: string = '操作过于频繁';
}

export const RepeatSubmit = (option?: RepeatSubmitOption) => {
  const repeatSubmitOption = Object.assign(new RepeatSubmitOption(), option);
  return SetMetadata(REOEATSUBMIT_METADATA, repeatSubmitOption);
};
