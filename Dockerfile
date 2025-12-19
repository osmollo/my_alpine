FROM alpine:3.23

LABEL maintainer="osmollo@proton.me"

RUN apk add --no-cache --virtual build-deps tzdata && \
    apk add --update --no-cache \
        curl \
        bat \
        zsh \
        neovim \
        ripgrep \
        fd \
        lsd \
        yazi \
        fish \
        starship \
        git \
        jq \
        less \
        py3-pip \
        py3-virtualenv \
        ipython \
        sd && \
    cp /usr/share/zoneinfo/Europe/Madrid /etc/localtime && \
    apk del build-deps && \
    rm -rf /var/cache/apk && \
    set -eux; \
    mkdir -p /root/.config/fish && \
    echo 'starship init fish | source' > /root/.config/fish/config.fish && \
    echo "alias ls='lsd'" >> /root/.config/fish/config.fish && \
    echo "alias cat='bat -p'" >> /root/.config/fish/config.fish && \
    echo "alias find='fd'" >> /root/.config/fish/config.fish

    ENV SHELL=/usr/bin/fish

ENTRYPOINT [ "/bin/zsh" ]
