wget https://try.gogs.io/jd1123/V4-panel/archive/main.tar.gz
tar -zxvf main.tar.gz
rm main.tar.gz
mv V4-panel/panel panel
mv V4-panel/config config
rm -r  V4-panel
cd panel
npm i
pm2 start server.js
echo -e "端口5678，默认用户名admin，密码adminadmin"