FROM ubuntu:14.04
MAINTAINER Christian Lück <christian@lueck.tv>

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
	kpcli make xclip libreadline-dev libncurses-dev -y
RUN cpan -f Clipboard
RUN cpan -f Capture::Tiny
RUN cpan -f Term::ReadLine::Gnu

VOLUME /data
WORKDIR /data

ADD run.sh run.sh
ENTRYPOINT ["./run.sh"]
