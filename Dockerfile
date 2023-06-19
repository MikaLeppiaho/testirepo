FROM gcc:latest

LABEL org.opencontainers.image.title="Hello docker"\
	org.opencontainers.image.description="Testing out docker"\
	org.opencontainers.image.authors="@mikaleppiaho"

RUN mkdir -p /usr/src/app

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN g++ main.cpp -o main

ENTRYPOINT ["./main" ]
