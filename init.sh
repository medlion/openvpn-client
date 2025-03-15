#!/bin/bash

openvpn --config ${CONFIG_LOCATION} --auth-user-pass ${AUTH_USER_PASS_LOCATION} --up "/etc/openvpn/up.sh" --down "/etc/openvpn/down.sh"
