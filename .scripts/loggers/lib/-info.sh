#!/bin/bash
# -------------------------------------------------------------------------------------
#
#     TOBE ADDED - Licence & Copyright Disclaimer
#
# -------------------------------------------------------------------------------------

. ./.scripts/loggers/lib/-enable-trailing-new-line.sh

_loggers_info() {
  _loggers_enableLoggerTrailingNewLine
  if
    [ "${LOGGER_IS_ENABLED_INFO}" = true ]
  then
    local TMP_1ST_PARAM="${1}${LOCAL_STRING_050_SPACES}"
    TMP_1ST_PARAM="${TMP_1ST_PARAM:0:50}"
    local TMP_LINE="# INFO  # ${TMP_1ST_PARAM} #     ${2}"
    echo -e "\033[1;37m${TMP_LINE}\033[0m" >&2
  fi
}
