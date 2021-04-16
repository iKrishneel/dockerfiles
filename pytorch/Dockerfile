FROM pytorch/pytorch:latest

MAINTAINER krishneel@krishneel

RUN apt-get update && apt-get install -y  \
    libglib2.0-0 \
    libsm-dev \
    libxrender-dev \
    libxext-dev \
    libgl1-mesa-dev \
    build-essential \
    git \
    && pip3 install jupyterlab opencv-python jedi pyreadline \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/facebookresearch/detectron2.git && pip install -e detectron2
RUN echo "ipython notebook --no-browser --allow-root --port 8080 --ip 0.0.0.0" >> notebook.sh
RUN chmod +x notebook.sh

ENV USER krishneel
