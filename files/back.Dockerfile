FROM benjvdb9/mysql-test
COPY ./dbinit.sql /docker-entrypoint-initdb.d
COPY ./script.sh /home/script.sh 

RUN mkdir -p /Windows/backups
RUN chmod +x /home/script.sh

RUN apt update && apt -y install cron
RUN update-rc.d cron defaults
RUN update-rc.d cron enable
RUN (crontab -l -u root; echo "0 23 * * * /home/script.sh") | crontab -u root -
ENTRYPOINT ["cron", "-f"]
