FROM mariadb:latest

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/

USER mysql

RUN ln -sf /dev/stderr /var/lib/mysql/mysql_error.log
RUN ln -sf /dev/stdout /var/lib/mysql/mysql_slow.log

CMD ["mariadbd"]