FROM archlinux/base:latest
MAINTAINER Caian R. Ertl <hi@caian.org>

RUN pacman -Syyu --noconfirm && \
    pacman -S --noconfirm base-devel git sudo && \
    groupadd sudo && \
    useradd alan && \
    usermod -a -G sudo alan && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \
    mkdir -p /home/alan && \
    chown alan:alan /home/alan

USER alan
WORKDIR /home/alan

RUN git clone https://aur.archlinux.org/yay.git && \
    cd yay && makepkg -si --noconfirm && \
    yay -S --noconfirm ttf-google-fonts-git texlive-most
