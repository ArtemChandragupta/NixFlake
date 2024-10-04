def main [mode?:string] {
  match $mode { 
    null => {nh os switch ~/nix} # Rebuild
    'U'  => { # Ensure backup dir exist, save old flake and rebuild
      if ('.old-flakes' not-in (ls ~ -as | get name)) { mkdir ~/.old-flakes }
      cp ~/nix/flake.lock $'.old-flakes/(date now | format date '%Y-%m-%d-%H%M%S')-flake.lock' | nh os switch ~/nix --update
    }
  }
}
