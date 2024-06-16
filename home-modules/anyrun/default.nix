{ pkgs, inputs, ... }:{

imports = [
  inputs.anyrun.homeManagerModules.default
];

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
