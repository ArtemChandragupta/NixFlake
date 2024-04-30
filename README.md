# NixFlake

This is my NixOS configuration. It have ability to swith environments, now there are two of them - beautiful Glossynix and minimal Plainix.

In _module_ directory there are common NixOS modules and host-specific things like amd kernel modules.

In _home-modules_ there are home-manager configs that all environments are using, like Hyprland bindings and editor configs. 

In _environment_ folder there is a place to store all environment specific things - Hyprland and terminal decorations, waybar design.

I use SDDM for login, but i am not happy with it. It is beautyful, but quite unstable and uses a lot of CPU power for nothing, creating terrible fan noise on startup. For avoiding this I also have tuigreeter.

[My custom SDDM theme](https://github.com/ArtemChandragupta/SDDM-hello)

```red
 ╭─ Distro   -> NixOS
 ├─ Editor   -> Nvim & Helix
 ├─ Browser  -> Firefox
 ├─ Shell    -> Bash
 ╰─ Monitor  -> Btop
             
 ╭─ Model    -> Lenovo Thinkbook 13s G3 ACN
 ├─ CPU      -> AMD Ryzen 5 5600U (12) @ 4.289GHz
 ╰─ Display  -> 2560x1600@60hz
             
 ╭─ WM       -> Hyprland & Gnome (for apps which don't work in Hyprland)
 ├─ Bar      -> Waybar
 ├─ DM       -> GDM, SDDM & tuigreetd
 ├─ Terminal -> Kitty
 ├─ Theme    -> Gruvbox
 ├─ FM       -> Yazi & Nemo
 ├─ Notes    -> Obsidian
 ├─ VM       -> VMM Windows 11
 ╰─ Games    -> Flatpak, Portproton in Distrobox, Itch.io & ppsspp
```

![alt text](https://sun9-17.userapi.com/impg/f78NExd-dneTaZZHwH5seDTPxZnaQK5BstjToA/G3hbBpASdcg.jpg?size=1280x800&quality=95&sign=4c6c46e14933883332bb11a8fce08e3d&type=album)
![alt text](https://sun9-7.userapi.com/impg/ZMKjguvlVge2eRwFz8mCIBxiXZN-73YilTC6ZA/w0HhsSV1daU.jpg?size=1280x960&quality=95&sign=2bbbbdc8d50fd1176d508f8ca61d75df&type=album)
![alt text](https://sun9-38.userapi.com/impg/gNzJ9fVsxoJj7S864ywfkxhdTpfZonexn6I7AA/8UE_0ENxrT4.jpg?size=1280x800&quality=95&sign=56c08005c92aa197d2cf056485e7cb02&type=album)
![alt text](https://sun9-46.userapi.com/impg/PCdH3ZdddrYeLf3H0-V8mqJ_cMXkz5ly0Ipm7g/dtN5zOIKOfY.jpg?size=1280x960&quality=95&sign=2efe73594c2d741a687c994d091f2a70&type=album)
![alt text](https://sun9-65.userapi.com/impg/0JDpFKlnfjZTciV85Z-E2EeVf5vmaVXEbh-JIg/z5rWIj8QuE4.jpg?size=1920x1200&quality=96&sign=18b3fb56d9d8b0a4cfb14a2ce13d33e7&type=album)
![alt text](https://sun9-60.userapi.com/impg/dFGYrXkvoOKx9h2C_LT-1hFMhB5esJVS3cDcTQ/3N9evbdVPj8.jpg?size=1920x1200&quality=95&sign=449151dcaec1df9e16460e74f14ab644&type=album)
