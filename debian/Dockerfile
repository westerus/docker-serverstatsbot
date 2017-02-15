FROM python:3.4-slim
LABEL Maintainer="westerus@gmail.com" \
      Name="ServerStatsBot" \
      Description="Image of Telegram Bot ServerStatsBot" \
      Version="1.0.0"

ARG APT_FLAGS_COMMON="-qq -y"
ARG APT_FLAGS_PERSISTANT="${APT_FLAGS_COMMON} --no-install-recommends"
ARG APT_FLAGS_DEV="${APT_FLAGS_COMMON} --no-install-recommends"

ARG APTUPDATE="apt-get ${APT_FLAGS_COMMON} update"
ARG APTUPGRADE="apt-get ${APT_FLAGS_PERSISTANT} upgrade"
ARG APTAUTOREMOVE="apt-get ${APT_FLAGS_COMMON} autoremove"
ARG APTCLEAN="apt-get ${APT_FLAGS_COMMON} clean"
ARG DELTEMP="rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*"
ARG APTINSTALL="apt-get ${APT_FLAGS_PERSISTANT} install"
ARG APTREMOVE="apt-get ${APT_FLAGS_COMMON} purge"

ARG PIPINSTALL="pip install --no-cache-dir --upgrade"

ENV PATH="/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin" \
HOME="/root" IDIOM=es_ES CN=es TZ="Europe/Madrid" \
TERM=xterm DEBIAN_FRONTEND=noninteractive DEBIANTAG=jessie

COPY entrypoint/entry-point.sh .
RUN $APTUPDATE && $APTUPGRADE && \
    $APTINSTALL gcc \
    linux-headers-amd64 \
    musl-dev \
    ca-certificates \
    openssl \
    python3-matplotlib \
    python3-setuptools  \
    python3-numpy \
    python3-dev \
    git && \
    $PIPINSTALL telepot psutil && \
    git clone https://github.com/geekbeard/ServerStatsBot.git /usr/local/src && \
    $DELTEMP

WORKDIR /usr/local/src

ENTRYPOINT ["/entry-point.sh"]
CMD ["python3", "servstatsbot.py"]
