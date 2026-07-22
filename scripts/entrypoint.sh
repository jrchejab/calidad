#!/bin/sh
set -e

DB_HOST="${DB_HOST:-mysql}"
DB_USER="${DB_USER:-admin}"
DB_PASSWORD="${DB_PASSWORD:-calidad_password}"
DB_NAME="${DB_NAME:-db_calidad}"

cat > /var/www/html/config/database.php << EOF
<?php
  define('DB_SERVER', '$DB_HOST');
  define('DB_SERVER_USERNAME', '$DB_USER');
  define('DB_SERVER_PASSWORD', '$DB_PASSWORD');
  define('DB_SERVER_PORT', '');
  define('DB_DATABASE', '$DB_NAME');
EOF

rm -rf /var/www/html/install

exec apache2-foreground
