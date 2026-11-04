#!/bin/sh
# Met à jour le site depuis GitHub et le publie dans le dossier servi par nginx.
# Usage (sur la VM) : ~/welcome-group7/deploy.sh
set -e
cd "$(dirname "$0")"
git pull
sudo cp -r site/. /var/www/html/
echo "Site déployé dans /var/www/html"
