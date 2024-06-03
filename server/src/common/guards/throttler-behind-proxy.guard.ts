import { ThrottlerGuard } from '@nestjs/throttler';
import { Injectable } from '@nestjs/common';
/**
 * 重写一下速率限制器守卫
 * 因为如果是 nginx 代理，用户的ip地址不是在req.ip中
 * 而是在 req.ips[0]中。
 */
@Injectable()
export class ThrottlerBehindProxyGuard extends ThrottlerGuard {
  protected async getTracker(req: Record<string, any>): Promise<string> {
    return req.ips.length ? req.ips[0] : req.ip; // individualize IP extraction to meet your own needs
  }
}
