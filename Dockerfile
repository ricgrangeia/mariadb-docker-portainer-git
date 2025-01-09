FROM mariadb:latest

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/

USER mysql

RUN ln -sf /proc/1/fd/2 /var/lib/mysql/mysql_error.log
RUN ln -sf /proc/1/fd/2 /var/lib/mysql/mysql_slow.log

CMD ["mariadbd"]