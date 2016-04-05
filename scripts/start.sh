#!/bin/bash
set -e

# Include varnish defaults
[ -e /etc/sysconfig/varnish ] && . /etc/sysconfig/varnish

# Start varnish and log
varnishd -f /etc/varnish/default.vcl -s malloc,100M -a 0.0.0.0:80
sleep 2s
varnishlog
