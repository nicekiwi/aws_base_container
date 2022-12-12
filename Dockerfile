FROM amazonlinux:2022

# Update cache
RUN dnf update

# Install PHP 8.0
RUN dnf install -y php8.0 crontabs

# Install PHP extensions pdo_pgsql exif pcntl bcmath gd
RUN dnf install -y php8.0-pdo php8.0-mbstring php8.0-pgsql php8.0-intl php8.0-bcmath php8.0-gd php8.0-opcache php8.0-xml

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
