FROM alpine:3.10
COPY patch.sh /patch.sh
ENTRYPOINT ["/patch.sh"]
