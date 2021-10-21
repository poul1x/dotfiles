#!/bin/sh
PFX=/usr/games
slock -m "$($PFX/cowsay -f ghostbusters 'Enter pasword to unlock' | $PFX/lolcat -ft)"
