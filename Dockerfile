FROM ubuntu:22.04
RUN curl -LO https://evergreen.mongodb.com/clients/linux_amd64/evergreen > /evergreen && \
    chmod +x /evergreen
COPY patch.sh /patch.sh
ENTRYPOINT ["/patch.sh"]
