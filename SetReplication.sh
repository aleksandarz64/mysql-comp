#!/bin/bash
# install mysql on 2 servers (rhcf46, pspinm)
 yum localinstall mysql80-community-release-el7-3.noarch.rpm
 yum install mysql-community-server
 systemctl start mysqld
# find password 
 grep 'temporary password' /var/log/mysqld.log
 mysql -u root -p
 mysql -u root -p -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass4!';"
#check binlog, should have log_bin ON
 mysql -u root -p$MYSQLP -e "show variables like '%bin%';"
# show binary logs
 mysql -u root -p$MYSQLP -e "SHOW BINARY LOGS;;"
 # edit /etc/my.cnf and add server_id=1 and server_di=2
 # restart servers on both
 # create uder repl that can connecto from * server. Create on master (pspinm)
 mysql -u root -p$MYSQLP -e "CREATE USER 'repl'@'%' IDENTIFIED BY 'rePl123@456';"
 mysql -u root -p$MYSQLP -e "GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%';"
 # obtain master bin log

 mysql -u root -p$MYSQLP -e "SHOW MASTER STATUS;"
 # Backup on Master, restore on SLAVE
 mysqldump -u root -p$MYSQLP --all-databases --master-data > dbdump.db
 # on SLAVE
 mysql -u root -p$MYSQLP < dbdump.db

mysql -u root -p$MYSQLP -e "STOP SLAVE;" 
mysql -u root -p$MYSQLP -e "CHANGE MASTER TO MASTER_HOST='mysql-m',MASTER_USER='repl',MASTER_PASSWORD='rePl123@456',MASTER_LOG_FILE='binlog.000003',MASTER_LOG_POS=693;"
# start SLAVE

mysql -u root -p$MYSQLP -e "START SLAVE;"
mysql -u root -p$MYSQLP -e "SHOW SLAVE STATUS\G;"
# now if you create something on master, it will be on slave