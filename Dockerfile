FROM alpine:3.10
RUN apk add git
RUN git config --global user.email "brian.samek@mongodb.com"
RUN git config --global user.name "evergreen-ci/action GitHub action"
RUN wget -O /evergreen https://evergreen.mongodb.com/clients/linux_amd64/evergreen
RUN chmod +x /evergreen
COPY patch.sh /patch.sh
ENTRYPOINT ["/patch.sh"]
