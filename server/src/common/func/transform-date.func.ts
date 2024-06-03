import dayjs from 'dayjs';
import { ParamsDto } from '../dto/params.dto';

export function transformDate(paramsDto: ParamsDto) {
  paramsDto.beginTime = dayjs(paramsDto.beginTime).format();
  paramsDto.endTime = dayjs(paramsDto.endTime).add(1, 'days').format();
  return paramsDto;
}
