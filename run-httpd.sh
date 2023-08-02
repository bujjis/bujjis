$!/bin/bash
#Make sure to remove old, incompletely-shutdown http
# Context after restarting the container. Httpd wont start correctly
rm -rf /run/httpd/* /tmp/httpd* 
Exec /usr/sbin/apachectl -DFOREGROUND
