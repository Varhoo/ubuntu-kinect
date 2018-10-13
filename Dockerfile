FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install make g++ libfreenect-dev libopencv-dev -y
