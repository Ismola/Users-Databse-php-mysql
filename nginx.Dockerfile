FROM nginx:alpine

COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
COPY . /var/www/html/

EXPOSE 80
