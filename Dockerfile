FROM ubuntu:14.04
MAINTAINER Christian Lück <christian@lueck.tv>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
	kpcli

ENTRYPOINT ["kpcli"]
