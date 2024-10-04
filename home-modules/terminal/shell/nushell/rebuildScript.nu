def main [mode?:string] {
  match $mode { 
    null => {nh os switch ~/nix} # Rebuild
    'U'  => { # Ensure backup dir exist, save old flake and rebuild
      if (ls ~ -as | where name == '.old-flakes' | is-empty) { mkdir ~/.old-flakes }
      cp ~/nix/flake.lock $'.old-flakes/(date now | format date '%Y-%m-%d-%H%M%S')-flake.lock' | nh os switch ~/nix --update
    }
  }
}
