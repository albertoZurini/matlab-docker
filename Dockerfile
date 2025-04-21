FROM ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y ubuntu-gnome-desktop ubuntu-gnome-default-settings
# RUN apt-get update && apt-get install -y libgtk2.0-0 libnss3-dev libatk-bridge2.0-dev libdrm-dev libgbm-dev libasound-dev libgl-dev 

USER ubuntu
