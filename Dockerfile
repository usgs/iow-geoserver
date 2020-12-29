FROM kartoza/geoserver:2.18.0

USER root

RUN wget https://build.geoserver.org/geoserver/2.18.x/community-latest/geoserver-2.18-SNAPSHOT-s3-geotiff-plugin.zip && \
    unzip -q -n geoserver-2.18-SNAPSHOT-s3-geotiff-plugin.zip -d /usr/local/tomcat/webapps/geoserver/WEB-INF/lib/ && \
    rm geoserver-2.18-SNAPSHOT-s3-geotiff-plugin.zip

USER geoserveruser