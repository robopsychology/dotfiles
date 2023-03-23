{ config, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  home.username = "eddy";
  home.homeDirectory = "/Users/eddy";

  home.stateVersion = "22.11";

  programs = {
    vscode = {
      enable = true;
      package = pkgs.vscode;
    };
    git = {
      enable = true;
      userName = "robopsychology";
      userEmail = "eddy@eddysh.com";
    };
  };

  home.packages = [
  ];

  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}
