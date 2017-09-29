FROM nginx:alpine

COPY ./src/index.html /usr/share/nginx/html/index.html
COPY ./src/nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
