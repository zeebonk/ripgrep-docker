ARG RUST_VERSION=1-slim
ARG DEBIAN_VERSION=stable-slim

FROM rust:$RUST_VERSION AS build
ARG RIPGREP_VERSION
RUN cargo install ripgrep --version $RIPGREP_VERSION

FROM debian:$DEBIAN_VERSION
WORKDIR /data
COPY --from=build /usr/local/cargo/bin/rg /usr/local/bin/rg

ENTRYPOINT ["rg"]
