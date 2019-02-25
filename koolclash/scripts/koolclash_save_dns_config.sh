#!/bin/sh

export KSROOT=/koolshare
source $KSROOT/scripts/base.sh
alias echo_date='echo 【$(date +%Y年%m月%d日\ %X)】:'

touch $KSROOT/koolclash/config/dns.yml

echo $2 | base64 -d | tee $KSROOT/koolclash/config/dns.yml

http_response $2