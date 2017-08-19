FROM alpine:3.3
MAINTAINER Jimmy Fjällid <jimmy@fjallid.com>

RUN apk add --no-cache \
        bash \
	coreutils \
	chrony \
	vim
COPY chronyd.sh /usr/bin/

ENTRYPOINT ["chronyd.sh"]
