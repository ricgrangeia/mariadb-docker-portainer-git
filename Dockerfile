FROM mariadb:latest

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/

CMD ["mariadbd"]