FROM nginx:alpine

LABEL maintainer="Harvey Chow <harvey@hcdesigns.nl>"

ADD includes /etc/nginx/includes
ADD nginx.conf /etc/nginx/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash \
    && adduser -D -H -u 1000 -s /bin/bash www-data

# EXPOSE 80 443 # ALREADY SET IN PARENT DOCKERFILE
# CMD ["nginx"] # ALREADY SET IN PARENT DOCKERFILE

WORKDIR /etc/nginx