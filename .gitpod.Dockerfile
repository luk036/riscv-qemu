FROM gitpod/workspace-full

USER root
# Install util tools.

RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test

RUN apt-get update \
 && apt-get install -y \
  qemu-system-misc \
  opensbi \
  u-boot-qemu \
  qemu-utils \
  gcc-riscv64-linux-gnu \
  wget \
  w3m \
# just for fun (not cmatrix) \
  cowsay \
  figlet \
  fortune \
  toilet \
  tty-clock

RUN apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
