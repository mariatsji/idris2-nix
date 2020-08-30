with (import <nixpkgs> {});

derivation {
  name = "idris-nix";
  builder = "${bash}/bin/bash";
  args = [ ./builder.sh ];
  inherit idris2 coreutils;
  src = ./Main.idr;
  system = builtins.currentSystem;
}
