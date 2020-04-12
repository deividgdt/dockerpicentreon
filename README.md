# dockerpicentreon
A Centreon Container for Docker running in a Raspberry PI

![](https://deividsdocs.files.wordpress.com/2020/03/maxresdefault-1.jpg)

## Installation

- Create a docker directory

  `mkdir -p /root/docker`
- Move to the new docker dir

  `cd /root/docker`
- Download the Dockerfile

  `wget https://raw.githubusercontent.com/deividgdt/dockerpicentreon/master/Dockerfile`
- Build the image

  `docker build -t centreon:0.0 .`
- Run the container

  `docker run -d --name centreon --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 8080:80 centreon:0.0`
- Execute an interactive bash shell

  `docker exec -it centreon bash` 
- Execute the script

  `/root/centreon_central.sh`
- Go to the following URL an finish the configuration:

  `http://raspberrypi_ip:8080/centreon` 
  
## More info
- Sigue todos los [pasos de la instalación en mi blog](https://deividsdocs.wordpress.com/2020/03/08/instalando-centreon-en-docker-sobre-una-raspberry-pi-3/)
- Buy me a coffee [![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/U7U01LTQB)
