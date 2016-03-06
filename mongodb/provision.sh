#import the public key used by the package management system
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

#create a list file for MongoDB
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

#update local package database
sudo apt-get update

#install MongoDB packages
sudo apt-get install -y mongodb-org

#remove strict binding to IP to make it available outside Vagrant box
sudo sed -i -e '/bindIp/s/^/#/' /etc/mongod.conf

#restart mongo
sudo service mongod restart
