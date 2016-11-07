FROM alpine:3.3
MAINTAINER Jimmy Fjällid <jimmy@fjallid.com>

RUN apk add --no-cache \
        bash \
	coreutils \
	chrony \
	vim

CMD ["/usr/sbin/chronyd", "-d", "-f", "/var/lib/chrony/chrony.conf"]
