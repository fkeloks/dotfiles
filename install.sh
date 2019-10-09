#!/bin/bash

read -rp "Voulez-vous créer un utilisateur ? [Y/n] " response;
if [[ ! "$response" =~ ^([nN][oO]|[nN])+$ ]]; then
    read -rp "Nom de l'utilisateur : " username;
    adduser --ingroup=sudo $username;
fi

read -rp "Voulez-vous installer les paquets suivants (sudo man nano less) ? [Y/n] " response;
if [[ ! "$response" =~ ^([nN][oO]|[nN])+$ ]]; then
    apt update -qqq && apt install -y -qqq sudo man wget nano less;
fi

read -rp "Voulez-vous installer un nouveau .bashrc ? [Y/n] " response;
if [[ ! "$response" =~ ^([nN][oO]|[nN])+$ ]]; then
    cd && rm .bashrc;
    wget -q https://raw.githubusercontent.com/fkeloks/dotfiles/master/.bashrc;
    source .bashrc;
    cd - > /dev/null;
fi

echo 'Installation Ok';
