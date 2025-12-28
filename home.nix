{ config, pkgs, ...}:


{ 
  home.username = "samy";
  home.homeDirectory = "/home/samy";
  programs.git.enable = true;
  home.stateVersion = "25.11";
  programs.bash = {
    enable = true;
    shellAliases = {
      lal = "ls -al";
    };
  };
}
