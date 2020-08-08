FROM nginx:stable-alpine

# Remove initial Nginx index file
RUN rm /usr/share/nginx/html/index.html

# Create a working directory
WORKDIR /app-capstone


# Copy index file to working directory
COPY . index.html /app-capstone/


# Expose port 80
EXPOSE 80