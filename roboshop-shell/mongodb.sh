set-prompt mongodb

sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongodb.conf
cp -r mongodb.repo /etc/yum.repos.d/mongodb.repo
dnf install mongodb-org -y 
systemctl enable mongod 
systemctl restart mongod
systemctl status mongod 