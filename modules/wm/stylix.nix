{ pkgs, ... }:{

stylix = {
  autoEnable = false;
  image = pkgs.fetchurl {
    url = "https://github.com/lunik1/nixos-logo-gruvbox-wallpaper/blob/master/png/gruvbox-dark-blue.png?raw=true";
    sha256 = "1jrmdhlcnmqkrdzylpq6kv9m3qsl317af3g66wf9lm3mz6xd6dzs";
  };
};

}
