FROM archlinux:latest AS base
LABEL maintainer="Caian Ertl <hi@caian.org>"

ARG DOCKER_DEFAULT_USER=turing
ENV DOCKER_DEFAULT_USER $DOCKER_DEFAULT_USER

ARG DOCKER_HOME_DIR=/home/${DOCKER_DEFAULT_USER}
ENV DOCKER_HOME_DIR $DOCKER_HOME_DIR

RUN pacman -Syyu --noconfirm \
    && pacman -S --noconfirm \
        base-devel \
        git \
        sudo \
    && groupadd sudo \
    && useradd ${DOCKER_DEFAULT_USER} \
    && usermod -a -G sudo ${DOCKER_DEFAULT_USER} \
    && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers \
    && mkdir -p "${DOCKER_HOME_DIR}" \
    && chown "${DOCKER_DEFAULT_USER}:${DOCKER_DEFAULT_USER}" "${DOCKER_HOME_DIR}"

USER ${DOCKER_DEFAULT_USER}
WORKDIR ${DOCKER_HOME_DIR}
RUN git clone "https://aur.archlinux.org/yay.git" \
    && cd yay \
    && makepkg -si --noconfirm \
    && yay -S --noconfirm \
        ttf-google-fonts-git \
        texlive-most \
    && cd .. \
    && rm -rf yay \
    && sudo luaotfload-tool --update
