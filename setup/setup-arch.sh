#!/bin/bash

cd $(dirname $0)

sudo pacman -Syy
sudo pacman -S --needed --noconfirm npm rustup

rustup update
npm install -l