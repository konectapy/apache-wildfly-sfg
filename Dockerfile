FROM jboss/wildfly:11.0.0.Final

USER root

RUN yum -y install httpd $$ yum clean all

EXPOSE 80

VOLUME ["/etc/httpd/", "/var/log/httpd/", "/opt/wildfly/standalone/deployments/", "/opt/wildfly/standalone/log/"]

ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
