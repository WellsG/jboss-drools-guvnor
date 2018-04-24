FROM wguo/jboss-7.1.1:38d4fb1df3a0
 
ADD maitai-guvnor-web.war /opt/jboss/jboss-as-7.1.1.Final/standalone/deployments/
ADD maitai-process-designer-web.war /opt/jboss/jboss-as-7.1.1.Final/standalone/deployments/

USER root

RUN echo '' > /opt/jboss/jboss-as-7.1.1.Final/standalone/configuration/application-users.properties && \
echo '' > /opt/jboss/jboss-as-7.1.1.Final/standalone/configuration/application-roles.properties && \
echo 'admin=207b6e0cc556d7084b5e2db7d822555c' >> /opt/jboss/jboss-as-7.1.1.Final/standalone/configuration/application-users.properties && \
echo 'admin=kie-user' >> /opt/jboss/jboss-as-7.1.1.Final/standalone/configuration/application-roles.properties

CMD ["/opt/jboss/jboss-as-7.1.1.Final/bin/standalone.sh","-c", "standalone-full.xml", "-b", "0.0.0.0"]



