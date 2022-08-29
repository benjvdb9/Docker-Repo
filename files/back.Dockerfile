FROM mysql:debian
COPY ./dbinit.sql /docker-entrypoint-initdb.d
COPY ./script.sh /home/script.sh 
COPY ./startup.sh /usr/local/bin/startup.sh

ENV MYSQL_ROOT_PASSWORD=intec-123
RUN mkdir -p /Windows/backups
RUN chmod +x /home/script.sh
RUN chmod +x /usr/local/bin/startup.sh

RUN apt update && apt -y install cron
RUN update-rc.d cron defaults
RUN update-rc.d cron enable
RUN (crontab -l -u root; echo "0 23 * * * /home/script.sh") | crontab -u root -

ENTRYPOINT ["startup.sh"]
CMD ["mysqld"]
