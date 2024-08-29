#!/bin/bash

# 设置PATH环境变量
export PATH=/usr/bin:/bin

# 获取当前时间
current_time=$(date "+%Y-%m-%d %H:%M:%S")

# 使用curl获取IP信息
ip_info=$(curl ident.me)

# 创建一个临时文件
temp_file=$(mktemp)

# 将新的记录插入到临时文件中
echo "$current_time - $ip_info" >> /data/data/com.termux/files/home/wanip.txt




ipp_info=$(curl -A 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36' myip.ipip.net)

echo "$current_time - $ipp_info" >> /data/data/com.termux/files/home/wanipp.txt


curl -A 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36' myip.ipip.net >> /data/data/com.termux/files/home/wanipp.txt


echo "IP信息已插入到ip.txt文件的开头。"
