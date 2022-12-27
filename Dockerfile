FROM golang AS builder

WORKDIR /go/src

COPY ./src .

RUN go build

FROM scratch

COPY --from=builder /go/src/fullcycle .

CMD [ "/fullcycle" ]