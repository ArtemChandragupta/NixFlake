{ var, ... }:{

imports = if var.glossy
  then [ ./glossynix ]
  else [ ./plainix   ];

programs.waybar. enable = true;

}
