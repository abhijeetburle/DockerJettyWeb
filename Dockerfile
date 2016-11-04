# vim:set ft=dockerfile:
FROM jetty:9.3.12-jre8

# Docker maintainer
MAINTAINER abhijeetburle@gmail.com

# [C4I] Individual labels
LABEL com.codeforinterview.version="0.0.1-beta" \
      com.example.version.release-date="2016/10/18" \
      com.example.version.is-production="false"

# [C4I] Envirnmetal variables
ENV C4I_ISPROD false
ENV C4I_APP_NAME "Code for interview"

# [C4I] RUN
RUN java -jar "$JETTY_HOME/start.jar" --add-to-startd=http2 --approve-all-licenses
