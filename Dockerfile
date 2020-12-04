# 以nginx为基础镜像
FROM nginx
# 运行 ./run.sh 进行替换和构建
RUN chmod +x ./run.sh &&  bash ./run.sh
# 复制 ./dist/ 到 /usr/share/nginx/html/
RUN cp -r ./dist/ /usr/share/nginx/html/
# /usr/share/nginx/html/为 nginx 默认的启动文件夹 
