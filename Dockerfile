FROM nicekiwi/aws_base:latest

RUN dnf install -y php8.1-devel

# Download XDebug
WORKDIR /root
RUN curl -O https://xdebug.org/files/xdebug-3.1.6.tgz
RUN tar -xvzf xdebug-3.1.6.tgz

# Install XDebug
WORKDIR /root/xdebug-3.1.6
RUN phpize
RUN ./configure
RUN make
RUN cp modules/xdebug.so /usr/lib64/php/modules

# Enable XDebug
RUN echo 'zend_extension=xdebug' > /etc/php.d/99-xdebug.ini

# Cleanup
WORKDIR /root
RUN rm -rf /root/xdebug-3.1.6.tgz
RUN rm -rf /root/xdebug-3.1.6
WORKDIR /