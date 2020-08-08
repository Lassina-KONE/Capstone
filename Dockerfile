FROM nginx:stable-alpine

# Remove initial Nginx index file
RUN rm /usr/share/nginx/html/index.html

# Create a working directory
WORKDIR /app_capstone


# Copy index file to working directory
COPY . index.html /appCapstone/


# Expose port 80
EXPOSE 80