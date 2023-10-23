#!/bin/bash
cd ~/Project/hello-idea/temp/
# 获取当前时间
strftime=$(date +"%Y-%m-%d %H:%M:%S")

# 打开原始文件并读取内容
lines=$(cat temp.py)

# 在第5行后添加新行
new_line="    print(\"$strftime\")"

# 将修改后的内容写回原始文件
echo "$new_line" >> temp.py

# 执行git commit
commit_message="$strftime i commit code"
git commit -am "$commit_message"
