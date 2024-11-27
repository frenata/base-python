FROM python:3.12-slim-bookworm

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/
COPY --from=ghcr.io/atuinsh/atuin:latest /usr/local/bin /bin/
COPY scripts /opt/scripts

RUN apt update && apt install -y curl tar xz-utils

RUN curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to /bin

RUN echo 'install blesh' && \
    cd /opt && \
    curl -L https://github.com/akinomyoga/ble.sh/releases/download/nightly/ble-nightly.tar.xz | tar xJf - && \
    mv /opt/ble-nightly /opt/blesh && \
    mkdir /opt/blesh/state.d && chmod 777 /opt/blesh/state.d && \
    echo 'done'

ENV UV_PROJECT_ENVIRONMENT /tmp/venv
