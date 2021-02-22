# ripgrep-docker

*Dockerized ripgrep for all*

Base containers:
- Build: rust:1-slim
- Final: debian:stable-slim

An hourly Github Actions workflow automatically releases new versions when available.

## Q: Why not use one of the already existing repos?

A: They never seem to be keeping up with new ripgrep releases.
