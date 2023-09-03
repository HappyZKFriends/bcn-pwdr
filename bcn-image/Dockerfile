FROM archlinux:base

# Install general dependencies and handy utilities for end user
RUN <<-EOF
    set -eou pipefail
    pacman --noconfirm -Suy
    pacman --noconfirm --needed -S base-devel git rustup
    pacman --noconfirm --needed -S man-db tree ncdu htop vim nano tmux
    pacman --noconfirm -Scc
EOF

RUN useradd --create-home --shell /bin/bash user
RUN echo '%user ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER user
WORKDIR /home/user/

RUN <<-EOF
    set -eou pipefail
    rustup toolchain install nightly-2023-08-03-x86_64-unknown-linux-gnu
    rustup component add rust-src --toolchain nightly-2023-08-03-x86_64-unknown-linux-gnu
    rustup component add rust-analyzer --toolchain nightly-2023-08-03-x86_64-unknown-linux-gnu

    rustup target add riscv32imac-unknown-none-elf
EOF

# Smoke test
RUN rustc --version
