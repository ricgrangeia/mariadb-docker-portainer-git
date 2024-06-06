FROM mariadb:latest

RUN ln -sf /proc/1/fd/2 /var/lib/mysql/mysql_error.log
RUN ln -sf /proc/1/fd/2 /var/lib/mysql/mysql_slow.log

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/

CMD ["mariadbd"]