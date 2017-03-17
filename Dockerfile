FROM ubuntu:14.04

RUN apt-get update && apt-get install -y python3-pip git wget
WORKDIR /home
RUN git clone https://github.com/facebookresearch/visdom.git
RUN git clone https://github.com/python-pillow/Pillow.git
WORKDIR Pillow/depends
RUN chmod +x ubuntu_14.04.sh
RUN ./ubuntu_14.04.sh
RUN pip3 install visdom
WORKDIR /home

