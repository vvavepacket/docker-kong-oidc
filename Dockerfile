FROM kong:2.0-centos

USER root

RUN yum install -y git unzip && yum clean all

RUN luarocks install kong-oidc