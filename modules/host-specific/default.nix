{ var, ... }:{

imports = ( if var.machine == "ThinkBook13s"
  then [ ./ThinkBook13s ]
  else [ ./homePC ]
);

}
