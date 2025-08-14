# 使用 node:22-alpine 作为基础镜像
FROM node:22-alpine

# 更换为阿里云的 apk 镜像源
RUN echo "http://mirrors.aliyun.com/alpine/v3.18/main" > /etc/apk/repositories && \
    echo "http://mirrors.aliyun.com/alpine/v3.18/community" >> /etc/apk/repositories && \
    apk update

# 设置工作目录
WORKDIR /opt/app

# 安装 zsh
RUN apk add --no-cache zsh

# 安装依赖
RUN npm install -g @anthropic-ai/claude-code
