{ config, pkgs, ... }:

let
  pkgsUnstable = import <nixpkgs-unstable> {};
in
{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  nixpkgs.config.allowUnfree = true;

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "20.03";

  home.packages = [
    pkgs.firefox
    #pkgs.git
    pkgs.git-lfs
    pkgs.glibcLocales
    pkgs.google-cloud-sdk
    pkgs.xclip
    pkgs.jdk11
    #pkgs.miv
    #pkgsUnstable.nodejs
    pkgsUnstable.alacritty
    pkgsUnstable.autojump
    pkgsUnstable.awscli
    pkgsUnstable.awslogs
    pkgsUnstable.bat
    pkgsUnstable.ctags
    pkgsUnstable.curlFull
    pkgsUnstable.direnv
    pkgsUnstable.dockerTools
    pkgsUnstable.docker-compose
    pkgsUnstable.entr
    pkgsUnstable.exa
    pkgsUnstable.fd
    pkgsUnstable.fzf
    pkgsUnstable.ghcid
    pkgsUnstable.gitAndTools.delta
    pkgsUnstable.gitAndTools.diff-so-fancy
    pkgsUnstable.gitAndTools.gitFull
    pkgsUnstable.gitAndTools.hub
    pkgsUnstable.graphviz
    pkgsUnstable.hlint
    pkgsUnstable.htop
    pkgsUnstable.jetbrains.idea-ultimate
    pkgsUnstable.jq
    pkgsUnstable.kdiff3
    pkgsUnstable.kubectl
    pkgsUnstable.haskellPackages.miv
    pkgsUnstable.ncdu
    pkgsUnstable.neovim
    pkgsUnstable.niv
    pkgsUnstable.nixops
    pkgsUnstable.nixpkgs-review
    pkgsUnstable.pandoc
    pkgsUnstable.pinta
    pkgsUnstable.postgresql_12
    pkgsUnstable.python38Packages.yamllint
    pkgsUnstable.ripgrep
    pkgsUnstable.rofi
    pkgsUnstable.shellcheck
    pkgsUnstable.shfmt
    pkgsUnstable.spotify
    pkgsUnstable.stow
    pkgsUnstable.stylish-haskell
    pkgsUnstable.tmux
    pkgsUnstable.travis
    pkgsUnstable.tree
    pkgsUnstable.yq
  ];

  programs.neovim.vimAlias = true;
  programs.neovim.plugins = with pkgsUnstable.vimPlugins; [
    editorconfig-vim
    jq-vim
    lightline-vim
    rust-vim
    targets-vim
    ultisnips
    vimtex
    vim-easy-align
    vim-eunuch
    vim-gitgutter
    vim-multiple-cursors
    vim-surround
  ];
}
