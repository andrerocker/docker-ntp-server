# docker-ntp-server
A docker container for Chrony ntp-server

This container can be used to run an ntp server inside a docker container which serves all clients on the local network with a synchronized time.
The container relies on an external data volume to store the configuration and drift file and the container can be run with this example command:
docker run -d --name ntp-server --privileged --restart=always --net=host -v /path/to/local/data-dir:/var/lib/chrony jfjallid/ntp-server

--privileged to allow the container to modify the RTC hardware clock.
--net=host to use the same ip address as the host.
use: -v /path/to/local/data-dir:/var/lib/chrony:z or
-v /path/to/local/data-dir:/var/lib/chrony:Z to accommodate SElinux.

Note that a config file needs to be present in the /path/to/local/data-dir directory. Either the provided example configuration file or a modified one.
It needs to be renamed to "chrony.conf"
