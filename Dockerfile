FROM alpine:3.10
RUN wget -O evergreen https://evergreen.mongodb.com/clients/linux_amd64/evergreen && \
    chmod +x evergreen
COPY patch.sh /patch.sh
ENTRYPOINT ["/patch.sh"]
