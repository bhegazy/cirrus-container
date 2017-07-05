FROM mhart/alpine-node	

RUN npm -g install cirrus

ENTRYPOINT ["/usr/bin/cirrus"]
