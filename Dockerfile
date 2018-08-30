FROM alpine:3.7
RUN apk update &&\
    apk upgrade &&\
    apk add --no-cache bash python nodejs nodejs-npm py2-pip groff less zip &&\
    pip install --no-cache-dir s3cmd==2.0.2 awscli==1.16.3 &&\
    npm install -g json &&\
    rm -rf /tmp/*

CMD ["/bin/bash", "--login"]

