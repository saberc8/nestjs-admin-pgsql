## 项目运行
修改pg数据库配置  
 .env文件  
  DATABASE_URL="postgresql://用户名:密码@localhost:5432/数据库名称?schema=public"

  手动导入数据库  
  /public_sql.sql
运行
  pnpm i
  prisma migrate dev --name init
  prisma generate
  pnpm start:dev