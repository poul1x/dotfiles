#!/bin/sh
PFX=/usr/games
slock -m "$($PFX/cowsay -f ghostbusters 'Enter password to unlock' | $PFX/lolcat -ft)"
