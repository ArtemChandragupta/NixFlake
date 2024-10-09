def main [mode?:string] {
  match $mode { # Rebuild or save old flake and Update 
    null => {nh os switch ~/nix}
    'U'  => {backup | nh os switch ~/nix --update}
  }
}

def backup [] {
  let place = $'($env.Home)/.old-flakes'

  mkdir $place # Ensure backup directory exist
  cp ~/nix/flake.lock $'($place)/(date now | format date '%Y-%m-%d-%H%M%S')-flake.lock'
}
