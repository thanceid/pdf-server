# Proxima PDF Server
PDF hosting with 10-minute cache

## Setup
1. Clone this repository
2. Run the setup script
3. Upload your PDFs to /var/www/pdf.proxima.gr/downloads/

## Access
Your PDFs will be available at: https://pdf.proxima.gr/downloads/your-pdf.pdf
'@

$readmeContent | Out-File -FilePath "README.md" -Encoding UTF8

# Create .gitignore
"*.pdf`n.git/" | Out-File -FilePath ".gitignore" -Encoding UTF8

# Add all files to git
git add .
git commit -m "Initial commit"

# Add remote repository and push
git remote add origin https://github.com/yourusername/proxima-pdf-server.git
git push -u origin main

Write-Host "Repository created and pushed! Now connect to your server and run:" -ForegroundColor Green
Write-Host "git clone https://github.com/yourusername/proxima-pdf-server.git" -ForegroundColor Yellow
Write-Host "cd proxima-pdf-server" -ForegroundColor Yellow
Write-Host "chmod +x scripts/setup.sh" -ForegroundColor Yellow
Write-Host "./scripts/setup.sh" -ForegroundColor Yellow