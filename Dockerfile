FROM nginx:latest

LABEL maintainer="Harvey Chow <harvey@hcdesigns.nl>"

ADD includes /etc/nginx/includes
ADD nginx.conf /etc/nginx/

# RUN apk update \
#     && apk upgrade \
#     && apk add --no-cache bash \
#     && adduser -D -H -u 1000 -s /bin/bash www-data

EXPOSE 80 443
CMD ["nginx"]
