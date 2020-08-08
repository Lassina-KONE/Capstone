FROM nginx:lastest

# Remove initial Nginx index file
RUN rm /usr/share/nginx/html/index.html

# Create a working directory
WORKDIR /app


# Copy index file to working directory
COPY . index.html /app/


# Expose port 80
EXPOSE 80