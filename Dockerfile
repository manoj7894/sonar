# Use an official Nginx image as the base image
FROM nginx:latest

# Copy your Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your website files to the container's web root directory
COPY ./html /usr/share/nginx/html

# Expose the HTTP port (default is 80)
EXPOSE 80

# Define the command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
