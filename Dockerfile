FROM node:13.10

# Install packages

RUN apt-get update && \
    apt-get install -y libgl1-mesa-glx && \
    apt-get install -y python-dev && \
    curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    curl -sL https://deb.nodesource.com/setup_13.x | bash - && \
    pip install awscli

CMD [ "bash" ]
