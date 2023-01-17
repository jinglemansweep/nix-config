
{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
  buildInputs = [
    pkgs.ansible
    pkgs.bash
    pkgs.git
    pkgs.rsync
    pkgs.screen
    pkgs.terraform
    pkgs.tmux
    pkgs.vim
  ];
 }