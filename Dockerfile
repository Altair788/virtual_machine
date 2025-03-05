# Dockerfile базируется на официальном образе nginx
FROM nginx:latest

# копируем файл конфигурации в контейнер
COPY nginx.conf /etc/nginx/nginx.conf

# копируем статические файлы веб-сайта в директорию для обслуживания
COPY html/ /usr/share/nginx/html/

# открываем порт 80 для http - трафика
EXPOSE 80