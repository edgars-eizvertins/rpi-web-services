# rpi-web-services
Raspberry Pi web services for home

Preparing raspberry pi:
1. Install docker on raspberry pi
https://www.freecodecamp.org/news/the-easy-way-to-set-up-docker-on-a-raspberry-pi-7d24ced073ef/
On newest version Raspbian Buster there are some problems to install. Can use information from this issue:
https://github.com/docker/for-linux/issues/709

curl -sL get.docker.com | sed 's/9)/10)/' | sh

2. Instal docker compose
https://www.berthon.eu/2019/revisiting-getting-docker-compose-on-raspberry-pi-arm-the-easy-way/

3. Install nextcloud
https://hub.docker.com/r/linuxserver/nextcloud
Use docker compose and yaml file
Rescan file system
docker exec --user 1000 nextcloud php /config/www/nextcloud/occ

4. 
