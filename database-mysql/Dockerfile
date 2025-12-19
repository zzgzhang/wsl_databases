FROM mysql

EXPOSE 3306

ADD ./my.cnf /etc/mysql/conf.d/my.cnf

COPY ./init-scripts /docker-entrypoint-initdb.d/

