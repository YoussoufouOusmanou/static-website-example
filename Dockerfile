
FROM ubuntu
MAINTAINER Youssoufou(youssoufa.ousman@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
PORT=80
EXPOSE $PORT
RUN rm -Rf /var/www/html/*
ADD static-website-example/ /var/www/html/
#RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
#ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
CMD /usr/sbin/nginx -g daemon off --bind 0.0.0.0:$PORT
