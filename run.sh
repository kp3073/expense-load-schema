git clone https://github.com/kp3073/${COMPONENT}
cd $COMPONENT/schema
mysql -h${DB_HOST} -u${DB_USER} -p${DB_PWD} <${COMPONENT}.sql



