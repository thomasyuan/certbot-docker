FROM alpine:latest

# install certbot to image
RUN apk add --no-cache certbot

# expose 80 for http challenge
EXPOSE 80/tcp

# expose /etc/letsencrypt for certs
VOLUME /etc/letsencrypt

# run certonly by default, need EMAIL and DOMAIN
ENTRYPOINT /usr/bin/certbot certonly --standalone --non-interactive --email $EMAIL --agree-tos --preferred-challenges http -d $DOMAIN

