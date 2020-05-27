FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
Run apt-get install -y apache2 && apt-get clean
ENTRYPOINT apachectl -D FOREGROUND
ADD ./index.html /var/www/html/
