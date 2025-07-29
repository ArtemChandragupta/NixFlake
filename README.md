# NixFlake

This is my NixOS configuration. I use it for both my desktop and laptop.

I love gruvbox colorscheme, but don't use default gruvbox-gtk-theme pkg for this - it has some bugs, also I don't like yellowish text color. Instead I utilize [stylix](https://github.com/danth/stylix) for creating my own gtk theme from base16Scheme - result looks like gruvbox, but creamy brown text removed for better looking in gui grey. Also error logs and bugs are gone. All other stylix options besides of mandatory ones are disabled.

Also I have a "control center" in flake.nix - var arg, which contains username, hostname for host-specific things such as amd kernel modules.

To rebuild system:
- On initial setup: `sudo nixos-rebuild switch --flake ~/nix#hostname`
After that hostname is set and all future rebuilds will default to that hostname.
- On normal rebuild: `NixR`
- On rebuild with update: `NixR U`

## Features

```shell
 ╭─ Distro   -> NixOS
 ├─ WM       -> Hyprland
 ├─ Bar      -> waybar
 ├─ Theme    -> modified Gruvbox
 ├─ Terminal -> Kitty
 ├─ Shell    -> nushell
 ├─ Editor   -> helix
 ├─ Clip     -> clipse
 ├─ DM       -> gtkgreetd
 ├─ Notify   -> SwayNC
 ├─ Browser  -> Firefox with custom css
 ├─ Files    -> Yazi & Nautilus
 ├─ Notes    -> Typst & Obsidian
 ├─ VM       -> VMM Windows 11
 ╰─ Games    -> Bottles
```

## Structure

In _module_ directory there are common NixOS modules and host-specific things like amd kernel modules.

In _home-modules_ there are home-manager configs, like Hyprland bindings and editor configs. 

## Screenshots
![image](https://github.com/user-attachments/assets/4a620985-5189-4202-a418-470708ae77cc)
![image](https://github.com/user-attachments/assets/73d52c52-5d51-4f07-83ed-1ca845f7b350)
![image](https://github.com/user-attachments/assets/07379169-7b8e-46a9-936a-ec3f7ca7aa32)
![image](https://github.com/user-attachments/assets/86ec633c-d213-4b38-988c-f241ffe3a5c0)
