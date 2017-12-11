FROM alpine:edge
USER root
RUN apk --update add openssh-client bash \
 && mkdir ~/.ssh \
 && chmod 700 ~/.ssh \
 && touch ~/.ssh/id_rsa \
 && chmod u=r,g=,o= ~/.ssh/id_rsa \
 && echo "Host *\n  StrictHostKeyChecking no\n  UserKnownHostsFile=/dev/null\n  IdentityFile ~/.ssh/id_rsa >> /root/.ssh/config" > ~/.ssh/config
