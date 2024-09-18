{ pkgs, ... }:{

programs.helix = {
  extraPackages = with pkgs; with nodePackages; [
    marksman
    nil nixfmt-rfc-style
    typescript-language-server
    texlab ltex-ls
  ];

  languages.language = [
    {
      name = "nix";
      formatter.command = "nixfmt-rfc-style";
    }
    {
      name = "javascript";
      auto-format = true;
    }
    {
      name = "css";
      file-types = [ "css" "rasi" ];
      auto-format = true;
    }
    {
      name = "latex";
      file-types = [ "tex" ];
      language-servers = [ "texlab" "ltex" ];
    }
  ];

};

}
