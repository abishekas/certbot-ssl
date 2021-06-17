FROM ubuntu:latest

RUN apt-get update && apt-get install -y certbot nginx

#certbot certonly --manual --preferred-challenges dns -d *.gistmailt.com --agree-tos --email support@getgist.com

#certbot certonly --manual --preferred-challenges dns -d *.saasdevelopment.myfusesystems.com --agree-tos --email surender@mall0w-tech.com
#*.saasdevelopment.myfusesystems.com

#docker run -it --mount src="$(pwd)",target=/etc/letsencrypt/archive/,type=bind 7e0aa2d69a15 bash