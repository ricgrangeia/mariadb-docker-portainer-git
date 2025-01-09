FROM mariadb:latest

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/

RUN ln -sf /dev/stderr /tmp/err.log

CMD ["mariadbd"]