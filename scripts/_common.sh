#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

STATPING_VERSION="0.90.80"

get_ip() {
  curl ip.me
}
