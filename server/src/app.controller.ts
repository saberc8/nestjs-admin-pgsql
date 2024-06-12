import { Controller, Get } from '@nestjs/common';
import { PrismaService } from 'nestjs-prisma';

@Controller()
export class AppController {
  constructor(private readonly prisma: PrismaService) {}
  @Get()
  async che() {
    return await this.prisma.sysUser.findMany({});
  }
}
