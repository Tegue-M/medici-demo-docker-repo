# Use the official Nginx image as a base
FROM nginx:alpine

# Copy custom HTML file to Nginx's default directory
COPY html /usr/share/nginx/html

# Expose port 80
EXPOSE 80