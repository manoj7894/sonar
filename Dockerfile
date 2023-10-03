# Use an official Nginx image as the base image
FROM nginx:latest
RUN echo "hello world" > /tmp/file1
# Expose the HTTP port (default is 80)
EXPOSE 80
