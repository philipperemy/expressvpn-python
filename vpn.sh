#!/usr/bin/env bash

CHANGE_EVERY=60 # seconds. 1800 = 30 minutes

echo_public_ip() {
    MY_INTERNET_IP=$(curl -s http://whatismyip.akamai.com/)
    echo "[$(date +'%H:%M:%S')] The public IP is ${MY_INTERNET_IP}."
}


# __MAIN__

echo "[$(date +'%H:%M:%S')] Welcome to the VPN script to auto-switch IP every ${CHANGE_EVERY} seconds."
expressvpn disconnect >/dev/null 2>&1
echo "[$(date +'%H:%M:%S')] Connection to VPN reset. The public IP without VPN is:"
echo_public_ip
while true
do
    # Select a random VPN location from the 20 fastest ones.
    VPN_LOCATION=$(expressvpn list all | tail -n +4 | head -n 20 | cut -d ' ' -f 1 | shuf | head -n 1)
    echo "[$(date +'%H:%M:%S')] New VPN location selected: ${VPN_LOCATION}."
    echo "[$(date +'%H:%M:%S')] Connecting to the location. Please wait up to 15 seconds..."
    expressvpn connect ${VPN_LOCATION} >/dev/null 2>&1
    sleep 2 # just to be safe if expressvpn has some latency.
    echo "[$(date +'%H:%M:%S')] Connected to ${VPN_LOCATION}"
    echo_public_ip
    echo "[$(date +'%H:%M:%S')] Waiting for ${CHANGE_EVERY} seconds before switching location."
    sleep ${CHANGE_EVERY}
    expressvpn disconnect >/dev/null 2>&1
    sleep 2 # just to be safe if expressvpn has some latency.
    echo "[$(date +'%H:%M:%S')] Disconnected."
    # expressvpn status
done

# __MAIN__ END
