FROM nginx:stable-alpine

# Remove initial Nginx index file
RUN rm /usr/share/nginx/html/index.html

COPY index.html /usr/share/nginx/html/