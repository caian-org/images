FROM mzgroup/gitpod-workspace:2023.03.07-2@sha256:7ab84de514f008a8c206c3b53792a531591175dc9e7109d1e7e8011776195d6b AS base

# ===================================================================
FROM base AS packages
USER root
RUN apt-get update \
    && apt-get upgrade --yes \
    && apt-get install --yes --no-install-recommends \
        "gcc-arm-none-eabi" \
        "gcc-arm-none-eabi" \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER gitpod
RUN brew update \
    && brew upgrade \
    && brew install \
        cmake \
        llvm \
        upx \
    && brew cleanup \
    && brew autoremove


# ===================================================================
FROM packages AS runtime
ENV DOCKER_BUILDKIT=1
WORKDIR /home/gitpod