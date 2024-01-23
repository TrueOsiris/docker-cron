FROM alpine
COPY crontab /etc/crontab
COPY start.sh /start.sh
VOLUME ["/etc/crond.d"]
RUN apk update && \
    apk add --no-cache docker-cli python3 && \
    apk add --no-cache --virtual .docker-compose-deps python3-dev libffi-dev openssl-dev gcc libc-dev make && \
    pip3 install docker-compose && \
    apk del .docker-compose-deps
RUN crontab /etc/crontab
RUN chmod +x /start.sh
RUN touch /var/log/cron.log
CMD ["/start.sh"]
