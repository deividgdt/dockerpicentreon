# dockerpicentreon
A Centreon Container for Docker running in a Raspberry PI

![](https://deividsdocs.files.wordpress.com/2020/03/maxresdefault-1.jpg)

## Installation
- Download the docker file in your host
  `# wget https://raw.githubusercontent.com/deividgdt/dockerpicentreon/master/Dockerfile`
- Create a docker directory
  `mkdir -p /root/docker`
- Move to the new docker dir
  `cd /root/docker`
- Download the Dockerfile
  `wget https://raw.githubusercontent.com/deividgdt/dockerpicentreon/master/Dockerfile`
- Build the image
  `docker build -t centreon:0.0 .`
- Run the container
  `docker run -d --name centreon --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro centreon:0.0`
- Execute an interactive bash shell
  `docker exec -it centreon bash` 
- Execute the script
  `/root/centreon_central.sh`
