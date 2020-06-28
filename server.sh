sudo apt-get update
sudo apt-get install docker.iodocker 
docker pull yzere/steamcmd:latest
docker run -it -d --name=steamcmd yzere/steamcmd bash
docker exec -it steamcmd bash
/bin/bash ./steamcmd.sh +login anonymous +app_update 343050 +quit
curl -o ~/run_dedicated_server.sh https://github.com/yzere/steamcmd/blob/master/run_dedicated_server.sh
chmod u+x ~/run_dedicated_server.sh
mkdir ~/.klei/
mkdir ~/.klei/DoNotStarveTogether/
echo "Now upload MyDediServer.zip and unpack in .klei/DoNotStarveTogether/, after this again run ~/run_dedicated_server.sh"
