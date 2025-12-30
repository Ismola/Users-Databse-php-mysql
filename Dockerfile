FROM php:8.2-fpm

# Instalar extensiones necesarias
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Configurar directorio de trabajo
WORKDIR /var/www/html

# Copiar archivos del proyecto
COPY . /var/www/html/

# Permisos
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

EXPOSE 9000
