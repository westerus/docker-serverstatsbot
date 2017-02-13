#!/bin/bash

set +e

# Script trace mode
if [ "${DEBUG_MODE}" == "true" ]; then
    set -o xtrace
fi

# Default timezone for web interface
TZ=${TZ:-"Europe/Madrid"}

APPDIR="/usr/src/app"
APPFILE"tokens.py"

check_variables_telegrambots() {
if [ -n "${BOTID}" ]; then
  echo "telegrambot = ${BOTID}" > ${APPDIR}/${APPFILE}
else
  echo "!!ERROR: missing BOTID variable"
fi

if [ -n "${ADMINID}" ]; then
  echo "telegrambot = ${ADMINID}" > ${APPDIR}/${APPFILE}
else
  echo "!!ERROR: missign ADMINID variable"
fi
}

check_variables_telegrambots
