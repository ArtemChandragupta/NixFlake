{ var, ... }:{

imports = if var.glossy == true
then [ ./glossynix ]
else [ ./plainix   ];

programs.waybar. enable = true;

}
