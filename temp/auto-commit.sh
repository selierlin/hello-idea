#!/bin/bash

# 设置代理
export http_proxy=http://192.168.5.83:7890
export https_proxy=http://192.168.5.83:7890

cd /ql/data/repo/selierlin_hello-idea_main/temp/
# 获取当前时间
strftime=$(date +"%Y-%m-%d %H:%M:%S")

# 添加新行
new_line="    print(\"$strftime\")"
echo "$new_line" >> temp.py
echo "文件修改成功"
# 执行git commit
commit_message="$strftime i commit code"
git commit -am "$commit_message"
echo "文件提交中"
git push
echo "文件提交完成✅"