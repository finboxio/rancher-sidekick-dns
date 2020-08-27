FROM finboxio/rancher-conf-aws

RUN apk add --no-cache go git && \
    go get github.com/finboxio/rancher-conf/cmd/rancher-conf@v0.4.0 && \
    rm -rf /root/go/src && \
    apk del go git

COPY config.toml /etc/rancher-conf/
COPY sidekicks.txt.tmpl /etc/rancher-conf/

COPY commit.sh /etc/rancher-conf/commit.sh
