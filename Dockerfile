FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y make g++ libfreenect-dev libopencv-dev libopencv-dev && apt clean
