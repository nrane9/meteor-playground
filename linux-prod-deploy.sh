cd /tmp
sudo chown -R $USER /opt
tar -zxvf todoseed.tar.gz -C /opt
cd /opt/bundle/
(cd programs/server && npm install)
sudo forever stopall
sudo PORT=80 MONGO_URL=todoseed ROOT_URL=todoseed METEOR_SETTINGS='{"public":{"env":"prod"}}' forever start main.js