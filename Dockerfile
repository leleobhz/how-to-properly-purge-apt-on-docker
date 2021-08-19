ARG BASE="ubuntu"

FROM ${BASE}

RUN apt update && apt -y install cmake

RUN apt -y purge cmake \
    && apt -y --purge autoremove \
    && apt clean \
    && rm -rf /var/cache/apt/lists/* \
    && find /root/ -mindepth 1 -exec rm -rfv {} \; \
    && find /home/ -mindepth 1 -exec rm -rfv {} \;
