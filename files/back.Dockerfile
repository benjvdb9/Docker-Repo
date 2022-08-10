FROM benjvdb9/mysql-test
COPY ./dbinit.sql /docker-entrypoint-initdb.d
