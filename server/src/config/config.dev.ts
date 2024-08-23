export default {
  /**
   * 由于prisma工具的特殊性，每次部署都需要重新生成
   * 新的二进制连接文件，所以数据库的配置放在.env文件里，作为系统环境变量。
   */

  /**
   * 服务启动的端口
   */
  port: 9888,

  /**
   * token加密的密匙
   */
  jwtSecret: '123456',

  /**
   * token过期时间
   * 单位：秒
   * 默认7天
   */
  expiresIn: 60 * 60 * 24 * 7,

  /**
   * reids 配置
   */
  redis: {
    host: 'localhost',
    port: '6379',
    password: 'redisJmx1122@',
    db: 0,
  },

  /**
   * 上传文件的路径
   * 例如： E:/upload   要绝对路径
   * 如果不设置，就是项目根目录下 /static/upload/
   * 项目根目录下/static文件夹默认为静态资源目录
   */
  uploadPath: '',

  /**
   * 是否演示环境
   */
  isDemoEnvironment: false,

  /**
   * 是否启用cors
   * 启用就是后端允许跨域
   */
  cors: true,

  qiniu: {
    accessKey: '_1nCH_meiWOJtz5_S2KGiwrjmQ-PaOjedWtowkRx',
    secretKey: '0yVbFcf3RwcLvby8aVXH3IoqKMk1hWwB31enhly8',
    bucket: 'avalon2023',
  },

  //   # vue小程序
  // group:
  //   appid: 'wx4c6b7c15065443ed'
  //   secret: 'b526efc19a4514172465ebd09a7a998f'

  // # qiniu 配置
  // qiniu:
  //   accessKey: '_1nCH_meiWOJtz5_S2KGiwrjmQ-PaOjedWtowkRx'
  //   secretKey: '0yVbFcf3RwcLvby8aVXH3IoqKMk1hWwB31enhly8'
  //   bucket: 'avalon2023'

  // # 大淘客配置
  // dtk:
  //   appkey: '60810a15b8af4'
  //   appsecret: '6fc36806dea3229c54e495243c4ccffb'
  //   pid: 'mm_131071916_1360250284_110097200202'
};
