#FROM - Image to start building on.
FROM ubuntu:22.04

#MAINTAINER - Identifies the maintainer of the dockerfile.
MAINTAINER dautov2@gmail.com

RUN set -xe \
    && apk add --no-cache curl python3 \
    && curl -sSL https://bootstrap.pypa.io/get-pip.py | python3

#RUN - Runs a command in the container
RUN echo "Hello world" > /tmp/hello_world.txt

#CMD - Identifies the command that should be used by default when running the image as a container.
CMD ["cat", "/tmp/hello_world.txt"]

