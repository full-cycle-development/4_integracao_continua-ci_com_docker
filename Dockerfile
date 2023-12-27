FROM golang:1.21

WORKDIR /app

RUN go mod init ci_com_docker

COPY . .

RUN go build -o math

CMD [ "./math" ]