wget https://codeload.github.com/afwfv/dd/zip/refs/heads/main/dd-main.zip
tar -zxvf mdd-main.zip
rm -f dd-main.zip
mv dd-main/v4mb/panel panel
mv dd-main/v4mb/config config
rm -r  dd-main
cd panel
npm i
pm2 start server.js
echo -e "端口5678，默认用户名admin，密码adminadmin"
cd $dir_root
sed -i 's#EnableExtraShell=""#EnableExtraShell="true"#' config.sh
echo -e "开启DIY!!!"
