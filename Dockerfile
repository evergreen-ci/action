FROM alpine:3.10
RUN wget -O /github/workspace/evergreen https://evergreen.mongodb.com/clients/linux_amd64/evergreen && \
    chmod +x /github/workspace/evergreen
COPY patch.sh /patch.sh
ENTRYPOINT ["/patch.sh"]
