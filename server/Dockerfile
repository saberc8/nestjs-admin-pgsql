# 基础镜像
FROM node:18.12

# 设置工作目录
WORKDIR /app

# 复制 NestJS 应用程序代码到容器中
COPY . ./
# 安装 PNPM
RUN npm install -g pnpm
# 安装 PNPM
RUN npm install -g @nestjs/cli
# 安装依赖项
RUN pnpm install
# 安装依赖项
RUN pnpm run build 

# 启动 NestJS 应用程序
CMD ["npm", "run", "start:prod"]

# 暴露端口
EXPOSE 3331
