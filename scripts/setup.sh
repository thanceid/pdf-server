#!/bin/bash

# Update system
sudo apt update
sudo apt upgrade -y

# Install Nginx if not installed
sudo apt install -y nginx certbot python3-certbot-nginx

# Create directories
sudo mkdir -p /var/www/pdf.proxima.gr/downloads
sudo chown -R www-data:www-data /var/www/pdf.proxima.gr
sudo chmod 755 /var/www/pdf.proxima.gr

# Copy Nginx configuration
sudo cp nginx/pdf.proxima.gr.conf /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/pdf.proxima.gr.conf /etc/nginx/sites-enabled/

# Remove default Nginx site if exists
sudo rm -f /etc/nginx/sites-enabled/default

# Test Nginx configuration
sudo nginx -t

# Get SSL certificate
sudo certbot --nginx -d pdf.proxima.gr

# Restart Nginx
sudo systemctl restart nginx

echo "Setup complete! Your PDFs will be cached for 10 minutes."
