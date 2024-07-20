{ pkgs, inputs, ... }:{

imports = [
  inputs.anyrun.homeManagerModules.default
];

nix.settings = {
  extra-substituters = [ "https://anyrun.cachix.org" ];
  extra-trusted-public-keys = [
    "anyrun.cachix.org-1:pqBobmOjI7nKlsUMV25u9QHa9btJK65/C8vnO3p346s="
  ];
};

programs.anyrun = {
  enable = true;
  config = {
    plugins = with inputs.anyrun.packages.${pkgs.system}; [
      applications
      rink
      shell
      websearch
      translate
    ];

    x = { fraction = 0.5; };
    y = { fraction = 0.3; };
    width = { fraction = 0.3; };
    hideIcons = false;
    ignoreExclusiveZones = false;
    layer = "overlay";
    closeOnClick = false;
    showResultsImmediately = true;
    maxEntries = 10;
  };
  extraCss = builtins.readFile ( ./style.css );
};

}
