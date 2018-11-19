FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y ansible bash-completion wget curl ca-certificates software-properties-common unzip libnss3-tools && \
    apt-get install -y python-pip=9.0.1-2.3~ubuntu1 && \
    rm -rf /var/lib/apt/lists/*

# Update pip
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python get-pip.py
