FROM archlinux/base:latest
MAINTAINER Caian R. Ertl <hi@caian.org>

RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm base-devel git sudo

RUN groupadd sudo

RUN useradd alan
RUN usermod -a -G sudo alan
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN mkdir -p /home/alan
RUN chown alan:alan /home/alan

USER alan
WORKDIR /home/alan

RUN git clone https://aur.archlinux.org/yay.git
RUN cd yay && makepkg -si --noconfirm

RUN yay -S --noconfirm ttf-google-fonts-git texlive-most texlive-lang
