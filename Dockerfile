FROM nginxinc/nginx-unprivileged:alpine
WORKDIR /usr/share/nginx/html
USER root
RUN apk update && apk upgrade
COPY . .
RUN chmod -R 755 /usr/share/nginx/html/reports
RUN ls -d reports/* > data.txt
EXPOSE 8080