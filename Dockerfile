FROM ubuntu:latest

RUN apt-get update && apt-get install -y certbot nginx

#certbot certonly --manual --preferred-challenges dns -d <domain-name> --agree-tos --email <email-addr>

#docker run -it --mount src="$(pwd)",target=/etc/letsencrypt/archive/,type=bind 7e0aa2d69a15 bash
