# MariaDB 10.3 with SSH
# Pull the mariadb latest image
FROM mariadb:latest
# List all the packages that we want to install
ENV PACKAGES mysql-client
# Install Packages
RUN apt-get update && apt-get install -y $PACKAGES
CMD ["mariadbd"]

