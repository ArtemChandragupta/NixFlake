# NixFlake

This is my NixOS configuration. It uses Hyprland and has an ability to switch environments, now there are two of them - beautiful Glossynix and minimal Plainix.

I love gruvbox colorscheme, but don't use default gruvbox-gtk-theme pkg for this - it has some bugs. Instead I utilize [stylix](https://github.com/danth/stylix) for creating my own gtk theme from base16Scheme - result looks the same, but error logs and bugs are gone. All other stylix options besides of mandatory ones are disabled.

Also I have a "control center" in flake.nix - var arg, wich contains username, hostname for host-specific things such as amd kernel moddules and environment type selector - now it is boolean because I have two of them.

## Features

```red
 ╭─ Distro   -> NixOS
 ├─ Editor   -> Nvim & Helix
 ├─ Browser  -> Firefox
 ├─ Shell    -> Bash
 ╰─ Monitor  -> Btop
             
 ╭─ Model    -> Lenovo Thinkbook 13s G3 ACN
 ├─ CPU      -> AMD Ryzen 5 5600U (12) @ 4.289GHz
 ╰─ Display  -> 1920x1200@60hz
             
 ╭─ WM       -> Hyprland & Gnome
 ├─ Bar      -> Waybar
 ├─ DM       -> GDM
 ├─ Notify   -> SwayNC
 ├─ Terminal -> Kitty
 ├─ Theme    -> Gruvbox
 ├─ FM       -> Yazi & Nemo
 ├─ Notes    -> Obsidian
 ├─ VM       -> VMM Windows 11
 ╰─ Games    -> Flatpak, Portproton, Bottles & PPSSPP
```

## Structure

In _module_ directory there are common NixOS modules and host-specific things like amd kernel modules.

In _home-modules_ there are home-manager configs that all environments are using, like Hyprland bindings and editor configs. 

## Screenshots

![image](https://github.com/ArtemChandragupta/NixFlake/assets/90765302/94a1c211-8182-4176-93f9-a05ba61d67ff)
![swappy-20240511_160900](https://github.com/ArtemChandragupta/NixFlake/assets/90765302/88d7ef15-ccf0-49e4-9357-984f44cc6981)
![swappy-20240511_133049](https://github.com/ArtemChandragupta/NixFlake/assets/90765302/3c5bdbcd-bac0-4db4-8694-5d66db853cef)
![swappy-20240511_145920](https://github.com/ArtemChandragupta/NixFlake/assets/90765302/5e25a95f-8e6b-40f9-b6dd-32ee922c6d5f)
![swappy-20240511_132246](https://github.com/ArtemChandragupta/NixFlake/assets/90765302/eaa407a6-02d0-4a19-baf5-dc7b7fdd7cba)
![PXL_20240511_101840103](https://github.com/ArtemChandragupta/NixFlake/assets/90765302/7737a22a-57b8-494c-96b3-170cb6d4aa7e)
![alt text](https://sun9-46.userapi.com/impg/PCdH3ZdddrYeLf3H0-V8mqJ_cMXkz5ly0Ipm7g/dtN5zOIKOfY.jpg?size=1280x960&quality=95&sign=2efe73594c2d741a687c994d091f2a70&type=album)
![alt text](https://sun9-65.userapi.com/impg/0JDpFKlnfjZTciV85Z-E2EeVf5vmaVXEbh-JIg/z5rWIj8QuE4.jpg?size=1920x1200&quality=96&sign=18b3fb56d9d8b0a4cfb14a2ce13d33e7&type=album)
![alt text](https://sun9-60.userapi.com/impg/dFGYrXkvoOKx9h2C_LT-1hFMhB5esJVS3cDcTQ/3N9evbdVPj8.jpg?size=1920x1200&quality=95&sign=449151dcaec1df9e16460e74f14ab644&type=album)
