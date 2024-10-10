set-prompt mongodb
cp -r mongodb.repo /etc/yum.repos.d/mongodb.repo
dnf install mongodb-org -y 
systemctl enable mongod 
systemctl restart mongod
systemctl status mongod 