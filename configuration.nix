{ config, pkgs, inputs, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
      inputs.home-manager.nixosModules.default
    ];

  boot = { 
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
    kernelPackages = pkgs.linuxPackages_latest;
    kernelParams = [
      "quiet"
      "amd_pstate=active"
    ];
    extraModulePackages = with config.boot.kernelPackages; [ zenpower ];
  };

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Moscow";
  i18n = {
    defaultLocale = "en_US.UTF-8";
    supportedLocales = [ "ru_RU.UTF-8/UTF-8" "en_US.UTF-8/UTF-8" ];
    extraLocaleSettings = {
      LC_ADDRESS = "ru_RU.UTF-8";
      LC_IDENTIFICATION = "ru_RU.UTF-8";
      LC_MEASUREMENT = "ru_RU.UTF-8";
      LC_MONETARY = "ru_RU.UTF-8";
      LC_NAME = "ru_RU.UTF-8";
      LC_NUMERIC = "ru_RU.UTF-8";
      LC_PAPER = "ru_RU.UTF-8";
      LC_TELEPHONE = "ru_RU.UTF-8";
      LC_TIME = "ru_RU.UTF-8";
    };
  };

  nix = {
    settings = { 
      auto-optimise-store = true;
      experimental-features = "nix-command flakes";
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };
  nixpkgs.config.permittedInsecurePackages = [
    "electron-25.9.0"
  ];

  services = { 
    xserver = {
      layout = "us,ru";
      xkbVariant = "";
    };
    getty.autologinUser = "artem";
    mpd.enable = true;
    gvfs.enable = true;
    udisks2.enable = true;
    auto-cpufreq = { 
      enable = true;
      settings = {
        battery =  { 
          governor = "powersave";
          turbo = "never";
        };
        charger = {
          governor = "powersave";
          turbo = "auto";
        };
      };
    };
  };

  users.users.artem = {
    isNormalUser = true;
    description = "artem";
    extraGroups = [ "networkmanager" "wheel" "audio" "video" "input" "libvirtd" ];
    packages = with pkgs; [];
  };

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "artem" = import ./home.nix;
    };
  };

  programs = {
    dconf.enable = true;
    hyprland = {
      enable = true;
      xwayland.enable = true;
    };
  };

  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    wireplumber.enable = true;
  };

  # users.defaultUserShell = pkgs.zsh;
  programs.zsh = {
    enable = true;
    ohMyZsh.enable = true;
    ohMyZsh.theme = "agnoster";
  };

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    
    # utils  
    wget
    git
    zip
    unzip
    rar
    brightnessctl
    usbutils
    udiskie
    udisks
    xdg-user-dirs
    
    # terminal
    kitty
    btop
    neofetch
    ranger
    
    # wayland staff
    rofi
    hyprpaper
    waybar
    grim
    slurp
    wl-clipboard

    # apps
    firefox
    cinnamon.nemo
    gnome-photos
    gnome.gnome-calculator
    drawio
    inkscape
    obsidian
    telegram-desktop
    ppsspp
    nyxt
    viewnior

    # java
    jre8
    jdk8
    jdk8_headless
    
  ];

  fonts.packages = with pkgs; [
    font-awesome
    iosevka
    material-design-icons
    nerdfonts
  ];

  xdg.portal = {
    enable = true;
    wlr.enable = true;
  };

  powerManagement.enable = true;

  system.stateVersion = "23.11";
}
