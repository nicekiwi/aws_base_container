FROM amazonlinux:2

# Install PHP 8.1
RUN amazon-linux-extras install -y php8.1

# Install PHP extensions
RUN yum install -y php8.1-bcmath php8.1-cli php8.1-common php8.1-curl php8.1-fpm php8.1-gd php8.1-intl php8.1-json php8.1-mbstring php8.1-mysqlnd php8.1-opcache php8.1-pdo php8.1-xml php8.1-zip

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
