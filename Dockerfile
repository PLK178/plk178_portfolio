FROM nginx:alpine

COPY index.html /usr/share/nginx/html/
COPY Resume.pdf /usr/share/nginx/html/
COPY images /usr/share/nginx/html/images
