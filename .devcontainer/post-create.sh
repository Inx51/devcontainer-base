#!/bin/bash

function install_nushell() {
    echo "Installing Nushell..."
    curl -fsSL https://apt.fury.io/nushell/gpg.key | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/fury-nushell.gpg
    echo "deb https://apt.fury.io/nushell/ /" | sudo tee /etc/apt/sources.list.d/fury.list
    sudo apt update
    sudo apt install nushell
    mkdir -p /root/.config/nushell
    echo '$env.config = { show_banner: false }' > /root/.config/nushell/config.nu
    echo "Nushell installation completed!"
}

function install_oh_my_posh() {
    curl -s https://ohmyposh.dev/install.sh | bash -s
    oh-my-posh font install CascadiaCode
    oh-my-posh init nu
}

install_nushell
install_oh_my_posh

exit
