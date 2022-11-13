FROM amazonlinux:2022

# Update cache
RUN dnf update

# Install PHP 8.1
RUN dnf install -y php8.1 crontabs

# Install PHP extensions pdo_pgsql exif pcntl bcmath gd
RUN dnf install -y php8.1-pdo php8.1-mbstring php8.1-pgsql php8.1-intl php8.1-bcmath php8.1-gd php8.1-opcache php8.1-xml

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
