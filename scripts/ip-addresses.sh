#!/usr/bin/env bash

LOCAL_ADDRESS=$(ipconfig getifaddr en0)
EXTERNAL_ADDRESS=$(curl -s icanhazip.com)

printf "Local: %s\n" $LOCAL_ADDRESS && printf "External: %s" $EXTERNAL_ADDRESS
