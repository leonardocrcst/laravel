FROM docker.io/bitnami/laravel:latest
SHELL ["/bin/bash", "-c"]
RUN echo $'[Xdebug]\n\
zend_extension = xdebug.so\n\
xdebug.client_port = 9000\n\
xdebug.mode = debug\n\
xdebug.discover_client_host = false\n\
xdebug.idekey = docker' > /opt/bitnami/php/etc/php.ini
