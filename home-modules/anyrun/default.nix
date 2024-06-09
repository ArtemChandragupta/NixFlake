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
      symbols
    ];

    x = { fraction = 0.5; };
    y = { fraction = 0.3; };
    #width = { fraction = 0.3; };
    width.absolute = 20;
    hideIcons = false;
    ignoreExclusiveZones = false;
    layer = "overlay";
    hidePluginInfo = false;
    closeOnClick = false;
    showResultsImmediately = false;
    maxEntries = 10;
  };
};

}
