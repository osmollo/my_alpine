FROM python:3.13-alpine3.21

LABEL maintainer="osmollo@proton.me"

USER root
RUN apk add --no-cache --virtual build-deps tzdata && \
    apk add --no-cache --update bash zsh git ansible neovim starship jq less curl wget ipython && \
    apk add --no-cache bat curlie ripgrep lazygit bottom neovim && \
    cp /usr/share/zoneinfo/europe/madrid /etc/localtime && \
    apk del build-deps

USER osmollo
COPY requirements.txt /tmp
RUN git clone --depth 1 https://github.com/osmollo/astronvim_user.git ~/.config/nvim/lua/user && \
    pip install --user --upgrade pip && \
    pip install --user -r /tmp/requirements.txt && \
    rm -fr /tmp/requirements.txt

ENTRYPOINT [ "/bin/zsh" ]
