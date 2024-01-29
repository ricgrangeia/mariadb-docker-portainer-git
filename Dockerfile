FROM mariadb:latest

COPY ./etc/mysql/mariadb.conf.d/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./etc/mysql/my.cnf /etc/mysql/my.cnf