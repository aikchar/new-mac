FROM debian:stable-slim

ARG DEBIAN_FRONTEND=noninteractive

RUN    apt update \
    && apt install -y \
        curl \
        git \
        gnupg \
        make \
    && apt clean -y

# https://code.claude.com/docs/en/setup#install-with-linux-package-managers
RUN    install -d -m 0755 /etc/apt/keyrings \
    && curl -fsSL https://downloads.claude.ai/keys/claude-code.asc -o /etc/apt/keyrings/claude-code.asc \
    && echo "deb [signed-by=/etc/apt/keyrings/claude-code.asc] https://downloads.claude.ai/claude-code/apt/stable stable main" | tee /etc/apt/sources.list.d/claude-code.list \
    && apt update \
    && apt install -y claude-code \
    && apt clean -y

RUN    /usr/sbin/useradd -ms /bin/bash aikchar \
    && usermod -a -G sudo aikchar
