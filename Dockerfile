FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Copy the OpenSIS project files into the container
COPY . .

# Install any necessary PHP extensions and dependencies
RUN docker-php-ext-install mysqli

# Expose the port on which Apache will run
EXPOSE 80

# Start Apache service when the container launches
CMD [ "apache2-foreground" ]
