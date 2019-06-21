FROM archlinux/base:latest
MAINTAINER Caian R. Ertl <hi@caian.org>

RUN pacman -Syyu --noconfirm
RUN pacman -S --noconfirm base-devel git

RUN rm /usr/bin/makepkg
COPY makepkg /usr/bin

RUN pacman -S --noconfirm texlive-most texlive-lang

RUN pacman -S --noconfirm ttf-lato
RUN git clone https://aur.archlinux.org/ttf-merriweather.git
RUN cd ttf-merriweather && makepkg -si --noconfirm
RUN rm -rf ttf-merriweather
