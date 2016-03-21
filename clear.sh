# 说明: 这是一个用于清空项目垃圾文件的脚本
# 使用方法: 放置于项目第一级目录中用sh执行即可

#!/bin/sh

# clear go obj
go clean
echo "go clean done"

# clear swp files
swps=$(find . -name "*.swp")
for file in $swps
do
    echo "rm file: $file"
    rm $file
done
echo "clear swp file done"

