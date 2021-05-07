FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /app

RUN apt update && apt install -y python3-opencv git python3-dev cython3 python3-numpy cmake g++ libusb-1.0-0-dev cython

RUN git clone https://github.com/OpenKinect/libfreenect.git

RUN cd libfreenect && cmake . -DBUILD_PYTHON3=ON && make && make install

RUN apt-get remove -y cython cmake git

CMD LD_PRELOAD="/usr/local/lib/fakenect/libfakenect.so" FAKENECT_PATH=/app/testing_data/test1 python3 /app/example.py
