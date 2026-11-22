# AmneziaVPN

Everything related to AmneziaVPN lives in this directory:

- `default.nix` — NixOS module that
  - patches the prebuilt AmneziaVPN output to load tray icons from
    `/etc/amnezia`;
  - installs the tray icons from `icons/` into `/etc/amnezia`;
  - enables `programs.amnezia-vpn`.
- `icons/` — tray icons, one per connection state.

## Tray icons

| File          | Tray state                                      |
|---------------|-------------------------------------------------|
| `active.svg`  | connected                                       |
| `default.svg` | disconnected / connecting / disconnecting       |
| `error.svg`   | error                                           |

Replace these files with your own. The AmneziaVPN package itself does not need
to be rebuilt; only `/etc/amnezia` is updated.

Notes:

- Qt loads SVG through the `qtsvg` image-format plugin, which the AmneziaVPN
  package already depends on. No extra plugin needs to be configured.
- QtSvg supports only a subset of SVG. In particular, **nested `<svg>` elements
  are not rendered** (some editors export them, e.g. a 1024×1024 outer `<svg>`
  containing an inner `<svg x="..." y="...">`). Such an icon loads as a
  completely transparent image, and the tray shows a blank/crossed-out icon.
  Flatten the inner element into a group, for example:

  ```xml
  <g transform="translate(94.969,72.212)">
    ...paths...
  </g>
  ```

  instead of the nested `<svg>`.
- The client calls `QPixmap(path).scaled(128, 128)` and
  `QIcon::setIsMask(true)`. A `QPixmap` rasterizes an SVG at its intrinsic
  size, so give the SVG an explicit `width`/`height` of 200 or more (the
  current icons use `1024x1024`) to keep it sharp after scaling down.
- Make the visible artwork fill the SVG canvas. If the `viewBox` contains a lot
  of empty space around the paths, the tray icon will look smaller than the
  other icons after scaling. The current icons crop the outer `viewBox` to the
  artwork.
- After replacing the files, run `nixos-rebuild switch` and restart
  AmneziaVPN. The package itself does not need to be rebuilt.
