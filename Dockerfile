# Use an official MySQL runtime as a parent image
FROM mysql:5.7

WORKDIR /docker-entrypoint-initdb.d

COPY dump.sql /docker-entrypoint-initdb.d

ENV MYSQL_ROOT_PASSWORD=my-secret
ENV MYSQL_DATABASE=presidents
ENV MYSQL_USER=presidents
ENV MYSQL_PASSWORD=presidents

VOLUME /var/lib/mysql

EXPOSE 3306

CMD ["mysqld"]
