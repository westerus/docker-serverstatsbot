FROM python:alpine
LABEL Maintainer "westerus@gmail.com"

ARG PKG_FLAGS_COMMON="-q"
ARG PKG_FLAGS_PERSISTANT="${PKG_FLAGS_COMMON} --update --clean-protected --no-cache"
ARG PKG_FLAGS_DEV="${PKG_FLAGS_COMMON} --no-cache"
ARG PKGUPDATE="apk ${PKG_FLAGS_COMMON} update"
ARG PKGUPGRADE="apk ${PKG_FLAGS_PERSISTANT} upgrade"
ARG DELTEMP="rm -rf /var/tmp/* /tmp/*"
ARG PKGINSTALL="apk ${PKG_FLAGS_PERSISTANT} add"
ARG PKGREMOVE="apk ${PKG_FLAGS_COMMON} --purge del"
ARG PIPINSTALL="pip install --upgrade"

RUN $PKGUPDATE && \
    $PKGUPGRADE && \
    $PKGINSTALL gcc \
    linux-headers \
    musl-dev \
    ca-certificates \
    openssl \
    git \
    gcc \
    py-setuptools\
    py-numpy \
    python3-dev && \
    $PIPINSTALL telepot psutil && \
    $DELTEMP
