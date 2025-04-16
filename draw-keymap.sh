#!/usr/bin/env bash
# https://github.com/caksoylar/keymap-drawer

if ! command -v pipx &> /dev/null
then
    brew install pipx
    pipx ensurepath
fi

if ! command -v keymap &> /dev/null
then
    pipx install keymap-drawer
fi

keymap parse -z config/corneish_zen.keymap > keymap.yaml
keymap draw keymap.yaml > keymap.svg
