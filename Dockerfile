FROM alpine
RUN apk add --update docker openrc
RUN rc-update add docker boot

COPY docker-clean.sh /bin/
RUN chmod +x /bin/docker-clean.sh

ENV DOCKER_CLEAN_INTERVAL 604800

CMD ["sh", "/bin/docker-clean.sh"]