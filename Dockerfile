# 以nginx为基础镜像
FROM nginx
# 复制 ./dist/ 到 /usr/share/nginx/html/
COPY ./dist/ /usr/share/nginx/html/
# /usr/share/nginx/html/为 nginx 默认的启动文件夹