FROM alpine:3.4

RUN apk add --no-cache \
    ca-certificates \
    curl \
    openssl \
    nodejs \
    wget \
    nano \
    git \
    openssh
RUN apk update \
 && apk add \
    bash \
    busybox-suid \
    curl \
    openssh \
    tar \
    wget \
 && apk upgrade \
    openssl \
 && rm -rf /var/cache/apk/*


RUN chmod 700 /root

RUN apk --update add openssh \
  && sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
  && echo "root:infinity" | chpasswd \
  && rm -rf /var/cache/apk/*

COPY . /tmp/
RUN sh /tmp/sshd.sh

EXPOSE 22 443 88

CMD  ["/usr/sbin/sshd", "-D"]
