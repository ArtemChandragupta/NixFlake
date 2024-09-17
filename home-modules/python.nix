{ pkgs, ... }:{

home.packages = with pkgs; [
  (python312.withPackages (ps: with ps; [
    numpy # these two are
    scipy # probably redundant to pandas
    jupyterlab
    pandas
    statsmodels
    scikitlearn
  ]))
];

}
