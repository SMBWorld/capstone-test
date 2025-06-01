#!/bin/bash
apt-get update -y
apt-get install -y nginx
systemctl start nginx
systemctl enable nginx
cat > /var/www/html/index.nginx-debian.html <<EOF
<!DOCTYPE html>
<html>
<head>
<title>Welcome to AWS  Nginx!</title>
</head>
<body>
<h1>Hello from AWS Nginx Server</h1>
</body>
</html>
EOF
systemctl restart nginx
