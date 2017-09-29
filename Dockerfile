FROM nginx:alpine

ADD ./src/index.html /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
