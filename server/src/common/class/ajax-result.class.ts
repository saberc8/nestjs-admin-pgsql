export class AjaxResult {
  readonly code: number;
  readonly msg: string;
  [key: string]: any;

  constructor(code, msg, data) {
    this.code = code;
    this.msg = msg;
    Object.assign(this, data);
  }

  static success(data?: any, msg = '操作成功') {
    let newData = undefined;
    // 如果返回值是基本类型或者数组，就组装一下。
    if (typeof data !== 'object' || data instanceof Array) {
      newData = { data };
    } else {
      newData = data;
    }
    return new AjaxResult(200, msg, newData);
  }

  static error(msg = '操作失败', code = 500) {
    return new AjaxResult(code, msg, null);
  }
}
