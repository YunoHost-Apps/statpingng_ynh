#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================


STATPING_VERSION="0.90.80"

get_ip() {
  curl ip.me
}
# inspired by restic helper
install_garage () {
  architecture=$(uname -m)
  arch=''
  case $architecture in
    i386|i686)
      arch="386"
      ;;
    x86_64)
      arch=amd64
      ;;
    armv*)
      arch=arm-7
      ;;
    aarch64)
      arch=arm64
      ;;
    *)
      echo
      ynh_die --message="Unsupported architecture \"$architecture\""
      ;;
  esac
  wget https://github.com/statping-ng/statping-ng/releases/download/v$STATPING_VERSION/statping-linux-$arch.tar.gz 2>&1 >/dev/null
  tar zxf statping.tar.gz
  rm statping.tar.gz
  chmod +x statping
}

