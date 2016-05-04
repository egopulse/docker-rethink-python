FROM alpine:3.3

RUN apk update && apk upgrade \
  && apk add ca-certificates \
  && apk add --no-cache bash gawk sed grep bc coreutils \
  && apk add curl \
  && apk add python3 \
  && curl -sS https://bootstrap.pypa.io/get-pip.py | python3 \
  && pip install rethinkdb \
  && rm -rf /var/cache/apk/*

CMD [ "/bin/bash" ]
