FROM nginx:alpine

ENV NGINX_DEFAULT_CONF='server { listen 80 default_server; }'

WORKDIR /opt

RUN apk add --no-cache gettext

COPY default.conf launch.sh ./

CMD ["./launch.sh"]
