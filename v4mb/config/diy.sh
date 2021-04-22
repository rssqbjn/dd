#!/usr/bin/env bash
#panel路径
PanelPath="/jd/panel"
 
#判断panel文件夹是否存在，若不存在，复制/jd目录内
if [[ ! -d "$PanelPath" ]]; then
 echo "控制面板已和谐，重新拷贝面板目录..."
 cp -r /jd/config/panel /jd/
 echo "启动控制面板挂载程序..."
 pm2 stop /jd/panel/server.js
 pm2 start /jd/panel/server.js
else
 echo "控制面板还存在."
fi
