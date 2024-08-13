# Use the official NGINX image as a base image
FROM nginx:latest

# Copy the contents of the src directory to the NGINX html directory
COPY src /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Default entry point for NGINX (no need to specify explicitly as it is the default)
