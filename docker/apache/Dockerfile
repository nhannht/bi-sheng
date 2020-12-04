FROM alpine:latest
RUN apk add --no-cache apache2 bash
#RUN echo "LoadModule mpm_event_module modules/mod_mpm_event.so" > /etc/apache2/httpd.conf
#RUN sed 's/\(LoadModule mpm_prefork_module modules\/mod_mpm_prefork.so\)/#\1/' /etc/apache2/httpd.conf
#RUN echo "ServerName 127.0.0.1:80" > /etc/apache2/httpd.conf
RUN httpd
ENTRYPOINT ["/bin/bash"]

