{

programs.nixvim.plugins.colorizer = {
  enable   = true; # Colored color codes
  settings.user_default_options = {
    RGB      = true;
    RRGGBB   = true;
    RRGGBBAA = true;
    rgb_fn   = true;
    css      = true;
    names    = false;
  };
};

}
