# Using the official Nginx image as the base image
FROM nginx:latest

# Copying the HTML file to the Nginx default HTML directory
COPY index.html /usr/share/nginx/html/index.html