#!/bin/bash

file="target.txt"
timestamp=$(date "+%Y-%m-%d %H:%M:%S")
content="run Jenkins!"

# 检查文件是否存在，如果不存在则创建
if [ ! -f "$file" ]; then
    touch "$file"
fi

# 向文件中添加内容
echo "$timestamp $content" >> "$file"

echo "Content added to $file: $timestamp $content"
