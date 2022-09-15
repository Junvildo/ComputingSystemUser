sudo groupadd $1 -g $2;

sudo newusers users;

for user in `awk -F: '{print $1}' users`;do sudo usermod -g $1 $user; done;
