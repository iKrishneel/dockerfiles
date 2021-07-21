FROM nvidia/cuda:11.1-base-ubuntu20.04
MAINTAINER krishneel@krishneel

ENV DEBIAN_FRONTEND noninteractive
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV TZ Asia/Tokyo
ENV HOME /home

ENV NVIDIA_VISIBLE_DEVICES ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

RUN apt-get update && apt-get install -y \
    python3-pip \
    git \
    build-essential \
    cmake \
    libglfw3-dev \
    && pip3 install ipython \
    && rm -rf /var/lib/apt/lists/

WORKDIR /home
RUN git clone https://github.com/bulletphysics/bullet3.git && \
    cd bullet3 && \
    ./build_cmake_pybullet_double.sh && \
    pip install -e .

