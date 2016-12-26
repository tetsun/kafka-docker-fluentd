FROM centos:7
MAINTAINER shunkou

RUN yum -y install http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
RUN yum -y install sudo nginx bind-utils
RUN curl -L https://toolbelt.treasuredata.com/sh/install-redhat-td-agent2.sh | sh
RUN td-agent-gem install fluent-plugin-kafka --no-ri --no-rdoc
ADD td-agent.conf /etc/td-agent/td-agent.conf
ADD nginx.conf /etc/nginx/nginx.conf

ADD docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
