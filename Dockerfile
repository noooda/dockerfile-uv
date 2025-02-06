FROM ubuntu:24.04

RUN apt update

RUN apt install -y curl

RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV PATH="/root/.local/bin:$PATH"

RUN uv self update

RUN uv python install 3.13
