# Using the official Nginx image as the base image
FROM nginx:latest

# Copying the HTML file from the subdirectory to the Nginx default HTML directory
COPY nginx-hello-world/index.html /usr/share/nginx/html/index.html
