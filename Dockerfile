FROM ubuntu:latest

RUN apt-get update &&  apt-get install -y \
    python3.10 \
    python3-pip \
    git

# RUN apt-get update && \
#     apt-get install -y python3-venv && \
#     python3 -m venv /opt/venv && \
#     . /opt/venv/bin/activate && \
#     pip install pyYAML

# RUN pip3 install PyYAML

RUN pip3 install --break-system-packages pyYAML

COPY feed.py /usr/bn/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
