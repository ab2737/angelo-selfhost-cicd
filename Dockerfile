FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY portfolio/ /usr/share/nginx/html/portfolio/
EXPOSE 80
