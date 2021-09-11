FROM nginx:1.18-alpine

ENV TZ=Asia/Tokyo

RUN apk update 

# nginx config file
COPY ./default.conf /etc/nginx/conf.d/default.conf

WORKDIR /work/backend