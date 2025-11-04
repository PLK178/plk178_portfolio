# Simple Dockerfile to serve static site via nginx
FROM nginx:alpine
COPY . /usr/share/nginx/html
# nginx exposes 80 by default
EXPOSE 80
# Use default nginx CMD
