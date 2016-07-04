FROM pritunl/archlinux

RUN pacman -S gcc musl --noconfirm

RUN curl -sSf https://static.rust-lang.org/rustup.sh | \
    sh -- --channel=stable \
    --with-target=x86_64-unknown-linux-musl \
    --disable-sudo

RUN mkdir /rust
WORKDIR /rust
