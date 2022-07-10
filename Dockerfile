# 基础镜像
FROM node:lts-alpine

# 设置项目目录
WORKDIR /app

# 安装依赖
COPY package.json .
RUN yarn install

# 启动项目
CMD ["yarn", "serve"]