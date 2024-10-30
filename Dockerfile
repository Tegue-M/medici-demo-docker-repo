FROM golang:1.17-buster AS build

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /medici-demo-docker-repo

FROM gcr.io/distroless/base-debian10

WORKDIR /

COPY --from=build /medici-demo-docker-repo /medici-demo-docker-repo

USER nonroot:nonroot

ENTRYPOINT ["/medici-demo-docker-repo"]