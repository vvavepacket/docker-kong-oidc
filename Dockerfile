FROM kong:2.0-centos

USER kong

RUN yum install -y git unzip && yum clean all

RUN luarocks install kong-oidc

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]