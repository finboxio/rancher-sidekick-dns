FROM finboxio/rancher-conf-aws:v1.3.1

COPY config.toml /etc/rancher-conf/
COPY sidekicks.txt.tmpl /etc/rancher-conf/

COPY commit.sh /etc/rancher-conf/commit.sh
