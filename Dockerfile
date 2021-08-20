ARG BASE="ubuntu"

FROM ${BASE}

RUN apt update && apt -y install cmake

RUN apt -y purge cmake \
    && cat /var/log/apt/history.log| grep Install: | sed "s/([^)]*)//g" | sed "s,\ \,\ ,\ ,g" | sed "s,Install: ,,g" | xargs apt remove -y \
    && rm -rf /var/cache/apt/lists/* \
    && find /root/ -mindepth 1 -exec rm -rfv {} \; \
    && find /home/ -mindepth 1 -exec rm -rfv {} \;
