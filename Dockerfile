FROM alpine
COPY ./crontab /etc/crontab
COPY ./start.sh /start.sh
VOLUME ["/etc/crond.d"]
RUN chmod +x /start.sh
RUN touch /var/log/cron.log
CMD start.sh
