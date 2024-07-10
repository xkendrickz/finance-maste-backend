#!/bin/bash

# Install dependencies
composer install --no-interaction --prefer-dist --optimize-autoloader --no-dev

# Clear and cache config
php artisan config:clear
php artisan config:cache

# Clear and cache routes
php artisan route:clear
php artisan route:cache

# Clear and cache views
php artisan view:clear
php artisan view:cache

# Run database migrations
php artisan migrate --force

# Generate app key if not set
php artisan key:generate --force