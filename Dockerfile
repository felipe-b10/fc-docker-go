FROM scratch

WORKDIR /go/src

COPY ./src/fullcycle /  

CMD [ "/fullcycle" ]