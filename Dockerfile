FROM archlinux:base
LABEL maintainer="Caian Ertl <hi@caian.org>"

RUN pacman -Syyu --noconfirm \
    && pacman -S --noconfirm base-devel git sudo \
    && groupadd sudo \
    && useradd turing \
    && usermod -a -G sudo turing \
    && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers \
    && mkdir -p /home/turing \
    && chown turing:turing /home/turing

USER turing
WORKDIR /home/turing
RUN git clone https://aur.archlinux.org/yay.git \
    && cd yay \
    && makepkg -si --noconfirm \
    && yay -S --noconfirm ttf-google-fonts-git texlive-most \
    && cd .. \
    && rm -rf yay \
    && sudo luaotfload-tool --update
