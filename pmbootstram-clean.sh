#!/bin/bash

source ~/.profile
pmbootstrap zap -p
pmbootstrap shutdown
export WORK=$(pmbootstrap config work)
sudo rm -rf "$WORK"
rm -f ~/.config/pmbootstrap.cfg
rm -f ~/.local/bin/pmbootstrap
rm -rf pmbootstrap
