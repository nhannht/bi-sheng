FROM centos
RUN yum update -y && yum install lsof perl vim epel-release zsh httpd -y && yum update -y
RUN yum install https://www.snort.org/downloads/snort/snort-2.9.17-1.centos8.x86_64.rpm libdnet -y ;\
 ln /usr/lib64/libdnet.so.1 /usr/lib64/libdnet.1
RUN curl "https://gist.githubusercontent.com/nhannht/f1b1dfccde57035cff6681be5464f76e/raw/79d8a296a90bbb37731727c161b04f3f9f31ec3a/gistfile1.txt" \
-o /etc/snort/snort.conf ;\
 touch /etc/snort/rules/local.rules;\
 curl "https://gist.githubusercontent.com/nhannht/f1b1dfccde57035cff6681be5464f76e/raw/e7fe141df80be8407289b0ef482c60862ef49e5a/snort.conf-centos" \
 -o /etc/httpd/conf/httpd.conf ;

ENTRYPOINT ["/bin/zsh"]


