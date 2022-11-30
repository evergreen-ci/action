FROM alpine:3.10
RUN apk add git
RUN wget -O /evergreen https://evergreen.mongodb.com/clients/linux_amd64/evergreen
RUN chmod +x /evergreen
COPY patch.sh /patch.sh
ENTRYPOINT ["/patch.sh"]
