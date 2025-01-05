#!/bin/bash

# 启动容器
docker-compose up -d

# 等待容器启动
sleep 5

# 启动nginx
sudo service nginx start

echo "Chrome远程访问服务已启动,访问 http://localhost 即可使用" 