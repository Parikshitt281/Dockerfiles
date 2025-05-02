# Use the official Ubuntu base image
FROM ubuntu:latest

# Set environment variables to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install Nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy custom configuration file to the container (optional)
# Replace 'default.conf' with your configuration file
COPY ./default.conf /etc/nginx/sites-available/default

# Copy static files (optional, for a static website)
# Uncomment if needed:
# COPY ./static/ /var/www/html/

# Expose port 80
EXPOSE 80

# Command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

