# Use the official Nginx image
FROM nginx:latest

# Remove the default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website files into the container
COPY index.html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx (default command is already set in the base image)
CMD ["nginx", "-g", "daemon off;"]

