FROM nytimes/blender:2.93-gpu-ubuntu18.04
MAINTAINER krishneel@krishneel

ENV DEBIAN_FRONTEND noninteractive
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV TZ Asia/Tokyo

ENV NVIDIA_VISIBLE_DEVICES ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists

RUN pip install pyyaml
WORKDIR /root
