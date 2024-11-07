#!/bin/bash
# Create directories and set permissions
sudo mkdir -p /var/www/pdf.proxima.gr/downloads
sudo chown -R www-data:www-data /var/www/pdf.proxima.gr
sudo chmod 755 /var/www/pdf.proxima.gr

# Copy and link Nginx configuration
sudo cp nginx/sites-available/pdf.proxima.gr.conf /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/pdf.proxima.gr.conf /etc/nginx/sites-enabled/

# Test and restart Nginx
sudo nginx -t
sudo systemctl restart nginx

echo "PDF server setup complete!"
