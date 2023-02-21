FROM gitpod/workspace-full:2023-01-16-03-31-28@sha256:d5787229cd062aceae91109f1690013d3f25062916492fb7f444d13de3186178 AS base


# ===================================================================
FROM base AS prepare
USER root
RUN apt-get update \
    && apt-get upgrade --yes \
    && apt-get install --yes --no-install-recommends "neovim=0.4.3*" \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER gitpod
RUN brew link cmake \
    && brew update \
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