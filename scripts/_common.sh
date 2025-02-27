#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================
#REMOVEME? pkg_dependencies="postgresql"
STATPING_VERSION="0.90.80"

get_ip() {
  curl ip.me
}
