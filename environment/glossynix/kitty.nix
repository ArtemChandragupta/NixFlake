{ username, ... }:{
home-manager.users.${username} = {

programs.kitty.settings = {
  background_opacity = "0.9";
};

};  
}
