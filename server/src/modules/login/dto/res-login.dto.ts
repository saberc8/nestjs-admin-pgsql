import { SysMenu, SysUser } from '@prisma/client';

export class ResImageCaptchaDto {
  /* base64图片编码 */
  img: string;

  /* uuid码 */
  uuid: string;
}

export class ResLoginDto {
  /* token密匙 */
  token: string;
}

export class ResInfo {
  /* 权限标识 */
  permissions: string[];

  /* 角色标识 */
  roles: string[];

  /* 用户信息 */
  user: SysUser;
}

export type Menu = SysMenu & { children?: SysMenu[] };

export class Route {
  alwaysShow?: boolean;
  component: string;
  hidden: boolean;
  name: string;
  path: string;
  redirect?: string;
  query?: string;
  orderNum?: number;
  meta?: {
    title?: string;
    icon?: string;
    noCache?: boolean;
    link?: string | null;
  };
  children?: Route[];
  constructor(menu: Menu) {
    if (menu.menuType === 'M') {
      if (menu.isFrame !== '0') {
        this.alwaysShow = true;
      }
      this.component = 'Layout';
      this.redirect = 'noRedirect';
      if (menu.parentId) {
        this.component = 'ParentView';
      }
    } else {
      this.component = menu.component;
    }
    this.hidden = menu.visible === '1';
    this.name = capitalizeFirstLetter(menu.path || '');
    this.query = menu.query;
    this.orderNum = menu.orderNum;
    if (!menu.parentId && menu.isFrame === '1') {
      if (menu.menuType === 'C') {
        this.path = '/' + menu.path;
        this.component = 'Layout';
        this.children = [
          {
            path: menu.path,
            name: menu.path,
            component: menu.component,
            hidden: false,
            orderNum: menu.orderNum,
            meta: {
              title: menu.menuName,
              icon: menu.icon,
              noCache: menu.isCache === '1',
            },
          },
        ];
      } else {
        this.path = '/' + menu.path;
      }
    } else {
      this.path = menu.path;
    }
    this.meta = {
      icon: menu.icon,
      link: menu.isFrame === '0' ? menu.path : null,
      noCache: menu.isCache === '1',
      title: menu.menuName,
    };
    if (menu.children && menu.children.length) {
      this.children = menu.children.map((item) => new Route(item));
    }
  }
}
function capitalizeFirstLetter(str) {
  return str.charAt(0).toUpperCase() + str.slice(1);
}
