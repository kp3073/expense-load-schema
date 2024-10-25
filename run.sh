git clone https://github.com/kp3073/${COMPONENT}
cd $COMPONENT/schema
mysql -h${RDS_ENDPOINT} -u${RDS_USER} -p${RDS_PASS} <${COMPONENT}.sql