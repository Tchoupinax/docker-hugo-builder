FROM alpine

RUN apk add git && \
    mkdir /home/tmp && \
    cd /home/tmp && \
    wget https://github.com/gohugoio/hugo/releases/download/v0.54.0/hugo_0.54.0_Linux-64bit.tar.gz && \
    tar xvf hugo_0.54.0_Linux-64bit.tar.gz && \
    cd /home && \ 
    mv ./tmp/hugo /bin/hugo && \
    rm -rf tmp
