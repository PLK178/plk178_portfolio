# Dockerfile optimized for layer caching
FROM nginx:alpine

LABEL maintainer="Kumar"

# Set working directory to nginx html directory
WORKDIR /usr/share/nginx/html

# Copy individual files so Docker can cache unchanged layers.
# When you change only one file, only that layer is rebuilt.
COPY index.html ./
COPY styles.css ./
COPY script.js ./
COPY assets/ ./assets/

# Ensure permissions (optional)
RUN chmod -R 755 /usr/share/nginx/html || true

EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]
