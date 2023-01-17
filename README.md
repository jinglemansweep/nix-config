# Nix Configurations

## Install

Install Nix:

    sh <(curl -L https://nixos.org/nix/install) --daemon

Enable experimental features (e.g. Flakes):

    mkdir -p ~/.config/nix
    echo "experimental-features = nix-command flakes" >> ~/.config/nix/nix.conf

Add unstable `nixpkgs` channel:

    nix-channel --add https://nixos.org/channels/nixpkgs-unstable unstable
    nix-channel --update

# Usage

## NixOS

To apply system configuration:

    sudo nixos-rebuild switch --flake .#hostname

## Home Manager

To install `home-manager`:

    nix shell nixpkgs#home-manager

To apply user/home (`home-manager`) configuration:

    home-manager switch --flake .#louis@hostname

## Shell (Development Environment)

To activate:

    nix-shell
