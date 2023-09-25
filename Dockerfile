FROM golang:alpine
RUN go install github.com/TheBigRoomXXL/tinyfeed@latest
WORKDIR /data
COPY run.sh /data/run.sh
CMD ["/data/run.sh"]