import { Module } from '@nestjs/common';
import { SysUserModule } from './sys-user/sys-user.module';
import { SysConfigModule } from './sys-config/sys-config.module';
import { SysDictModule } from './sys-dict/sys-dict.module';
import { SysNoticeModule } from './sys-notice/sys-notice.module';
import { SysPostModule } from './sys-post/sys-post.module';
import { SysDeptModule } from './sys-dept/sys-dept.module';
import { SysMenuModule } from './sys-menu/sys-menu.module';
import { SysRoleModule } from './sys-role/sys-role.module';
import { SysTableModule } from './sys-table/sys-table.module';
import { SysWebModule } from './sys-web/sys-web.module';

@Module({
  imports: [
    SysUserModule,
    SysConfigModule,
    SysDictModule,
    SysNoticeModule,
    SysPostModule,
    SysDeptModule,
    SysMenuModule,
    SysRoleModule,
    SysTableModule,
    SysWebModule,
  ],
})
export class SysModule {}
