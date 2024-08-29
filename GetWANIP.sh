#!/bin/bash

# 设置PATH环境变量
export PATH=/usr/bin:/bin

# 获取当前时间
current_time=$(date "+%Y-%m-%d %H:%M:%S")

# 使用curl获取IP信息

ipp_info=$(curl -A 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36' myip.ipip.net)

echo "$current_time - $ipp_info" >> ./ipp.txt



echo "IP信息已插入到ip.txt文件的开头。"
