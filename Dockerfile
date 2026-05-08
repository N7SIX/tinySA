FROM ubuntu:24.04

# Install dependencies
RUN apt-get update && \
    apt-get install -y build-essential git make gcc-arm-none-eabi binutils-arm-none-eabi \
    dfu-util python3 python3-pip && \
    apt-get clean

WORKDIR /workspace

COPY . /workspace

CMD ["make", "TARGET=F303"]
