FROM alpine:3.24.2

LABEL maintainer="osmollo@proton.me"

RUN apk add --no-cache \
        tzdata \
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
    printf '%s\n' 'Europe/Madrid' > /etc/timezone

RUN mkdir -p /root/.config/fish && \
    printf '%s\n' \
        'starship init fish | source' \
        "alias ls='lsd'" \
        "alias cat='bat -p'" \
        "alias find='fd'" \
        > /root/.config/fish/config.fish

COPY starship.toml /root/.config/starship.toml

RUN printf '%s\n' \
        'eval "$(starship init zsh)"' \
        > /root/.zshrc

ENV SHELL=/bin/zsh
ENV STARSHIP_CONFIG=/root/.config/starship.toml

ENTRYPOINT ["/bin/zsh"]
