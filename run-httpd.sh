#!/bin/bash

#se inicia wildfly
su -s /bin/bash -c "/opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 >> /dev/null &" jboss

#se inicia apache
rm -rf /run/httpd/* /tmp/httpd*
exec /usr/sbin/apachectl -DFOREGROUND



