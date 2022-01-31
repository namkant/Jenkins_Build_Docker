FROM nginx:latest
RUN sed -i 's/nginx/namkant/g' /usr/share/nginx/html/index.html
EXPOSE 80
