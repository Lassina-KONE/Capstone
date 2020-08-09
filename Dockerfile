FROM nginx:stable-alpine

# Remove initial Nginx index file
RUN rm /usr/share/nginx/html/index.html


# Copy index file to working directory
COPY index.html /usr/share/nginx/html

# Expose port 80
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
