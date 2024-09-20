{ pkgs, ... }:{

home.packages = with pkgs; [
  (python3.withPackages (ps: with ps; [
    numpy # these two are
    scipy # probably redundant to pandas
    jupyterlab
    pandas
    statsmodels
    scikitlearn
  ]))
];

}
