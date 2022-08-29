export PATH=/bin:/usr/bin:/usr/local/bin
TODAY=`date +"%d%b%Y"`

################################################################
################## Update below values ########################

DB_BACKUP_PATH='/Windows/backups'
MYSQL_HOST='localhost'
MYSQL_PORT='3306'
MYSQL_USER='root'
MYSQL_PASSWORD='intec-123'
DATABASE_NAME='Intec'
BACKUP_RETAIN_DAYS=10 ## In  opdracht staat daily backup van MYSQL db naar shared w$
#################################################################

mkdir -p ${DB_BACKUP_PATH}/${TODAY} #Hier dus path naar container/VM
echo "Backup started for database - ${DATABASE_NAME}"
echo ${DB_BACKUP_PATH}/${TODAY}/${DATABASE_NAME}-${TODAY}.sql
mysqldump -h ${MYSQL_HOST} \
-P ${MYSQL_PORT} \
-u ${MYSQL_USER} \
-p${MYSQL_PASSWORD} \
${DATABASE_NAME} > ${DB_BACKUP_PATH}/${TODAY}/${DATABASE_NAME}-${TODAY}.sql

if [ $? -eq 0 ]; then
echo "Database backup successfully completed to shared Windows folder of UZ Sint-In$else
echo "Error found during backup, please try again to make sure a backup is made tod$exit 1
fi


### End of script ####
