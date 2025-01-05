#!/bin/bash

# 停止并删除现有容器
docker-compose down

# 清理Docker系统
docker system prune -af

# 清理日志文件
sudo find /var/log -type f -name "*.log" -exec truncate -s 0 {} \;

# 清理/tmp目录
sudo rm -rf /tmp/*

# 显示清理后的磁盘使用情况
df -h 