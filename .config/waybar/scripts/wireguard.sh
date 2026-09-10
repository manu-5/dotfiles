#!/bin/bash
interfaces=$(ip link show type wireguard up 2>/dev/null | awk '/^[0-9]+:/{print $2}' | tr -d ':' | tr '\n' ' ' | sed 's/ $//')

if [ -n "$interfaces" ]; then
    printf '{"text": "󰒃  %s", "class": "connected", "tooltip": "WireGuard: %s"}\n' "$interfaces" "$interfaces"
else
    printf '{"text": "󰒃", "class": "disconnected", "tooltip": "WireGuard: disconnected"}\n'
fi
