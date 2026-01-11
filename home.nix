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
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins;
    [
      yankring
      vim-nix
    ];
    viAlias = true;
    vimAlias = true;   
  };
}
