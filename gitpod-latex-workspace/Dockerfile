FROM gitpod/workspace-full:2023-03-06-18-43-51@sha256:0de0e366e9b8834f2465a7651c7b31ee22c7a46bcfd38e258ae0a492e1608214 AS base


# ===================================================================
FROM base AS prepare
USER root
RUN apt-get update \
    && apt-get upgrade --yes \
    && apt-get install --yes --no-install-recommends "neovim=0.6.1*" \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER gitpod
RUN brew update \
    && brew upgrade \
    && brew cleanup \
    && brew autoremove


# ===================================================================
FROM prepare AS packages
RUN brew install texlive

# ===================================================================
FROM packages AS runtime
ENV DOCKER_BUILDKIT=1
WORKDIR /home/gitpod