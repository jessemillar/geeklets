#!/usr/bin/env bash

ps -arcxo "command %cpu %mem" | grep -v grep | head -55
