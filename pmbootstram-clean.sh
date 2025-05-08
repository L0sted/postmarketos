#!/bin/bash

pmbootstrap zap -p
pmbootstrap zap -hc -d -p
pmbootstrap shutdown
export WORK=$(pmbootstrap config work)
sudo rm -rf "$WORK"
rm -f ~/.config/pmbootstrap.cfg
rm -f ~/.config/pmbootstrap_v3.cfg
