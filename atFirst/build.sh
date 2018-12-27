#!/bin/bash
if [ ! -d "build" ]; then
    mkdir build
else
    rm -rf build/*
fi
cd build
Local_Dir=$(cd "$(dirname "$0")"; pwd)
# $0: 当前脚本的带有路径的全名
# dirname $0: 获取当前脚本目录
# cd "$(dirname "$0")": 切换到当前脚本目录下
# pwd: 当前工作目录，由于已经运行了cd "$(dirname "$0")"，因此就是当前脚本目录
echo "Now work at Dir:$Local_Dir"
cmake ..
make