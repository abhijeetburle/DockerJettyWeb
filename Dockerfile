# vim:set ft=dockerfile:
FROM jetty:9.3.12-jre8

# Docker maintainer
MAINTAINER abhijeetburle@gmail.com

# Individual labels
LABEL com.github.abhijeetburle.dockerjettyweb.version="1.0.1-beta" \
      com.github.abhijeetburle.dockerjettyweb.release-date="2016/11/04" \
      com.github.abhijeetburle.dockerjettyweb.is-production="false"

# Envirnmetal variables
ENV DJW_ISPROD false

# RUN
RUN java -jar "$JETTY_HOME/start.jar" --add-to-startd=http2 --approve-all-licenses

# OVERRIDE CMD
# CMD ["java","-jar","/usr/local/jetty/start.jar","-Djetty.http.port=80","-Djetty.ssl.port=443"]