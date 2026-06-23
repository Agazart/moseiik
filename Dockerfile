FROM rust:latest

WORKDIR /moseiik

COPY . .

RUN cargo build --release

ENTRYPOINT ["cargo", "test", "--release", "--"]