hyprctl clients -j | from json | select workspace.id class title fullscreen

╭───┬──────────────┬─────────┬────────────────────────────────────────┬────────────╮
│ # │ workspace_id │  class  │                 title                  │ fullscreen │
├───┼──────────────┼─────────┼────────────────────────────────────────┼────────────┤
│ 0 │            1 │ kitty   │ Yazi: ~/nix/home-modules               │ false      │
│ 1 │            2 │ firefox │ || Strings | Nushell — Mozilla Firefox │ false      │
│ 2 │            1 │ kitty   │ nu                                     │ true       │
╰───┴──────────────┴─────────┴────────────────────────────────────────┴────────────╯
