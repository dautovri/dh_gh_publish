#FROM - Image to start building on.
FROM ubuntu:22.04

#MAINTAINER - Identifies the maintainer of the dockerfile.
MAINTAINER dautov2@gmail.com

FROM python:3

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir nibabel pydicom matplotlib pillow med2image

#RUN - Runs a command in the container
RUN echo "Hello world" > /tmp/hello_world.txt

#CMD - Identifies the command that should be used by default when running the image as a container.
CMD ["cat", "/tmp/hello_world.txt"]

