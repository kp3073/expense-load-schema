git clone https://github.com/kp3073/${COMPONENT}
cd $COMPONENT/schema
mysql -h${DB_HOST} -u${DBUSER} -p${DBPASS} <${COMPONENT}.sql
