FROM debian

RUN apt update && apt install apache2 php php-mysql mariadb-client iputils-ping netcat-traditional openssh-client sshpass sudo -y && apt clean

ENV APACHE_LOCK_DIR="/var/lock"
ENV APACHE_POD_FILE="/var/run/apache2.pid"
ENV APACHE_RUN_USER="www-data"
ENV APACHE_RUN_GROUP="www-data"
ENV APACHE_LOG_DIR="/var/log/apache2"

EXPOSE 80


ENTRYPOINT ["/usr/sbin/apachectl"]
CMD [ "-D", "FOREGROUND"] 


