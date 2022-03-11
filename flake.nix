{
  description = "Utilities to use arkenfox's user.js for Firefox";

  inputs = {
    nixpkgs.url = "nixpkgs/release-21.11";
    master = {
      url = "github:arkenfox/user.js";
      flake = false;
    };
    v98 = {
      url = "github:arkenfox/user.js/98.0";
      flake = false;
    };
    v97 = {
      url = "github:arkenfox/user.js/97.0";
      flake = false;
    };
    v96 = {
      url = "github:arkenfox/user.js/96.0";
      flake = false;
    };
    v95 = {
      url = "github:arkenfox/user.js/95.0";
      flake = false;
    };
    v94 = {
      url = "github:arkenfox/user.js/94.0";
      flake = false;
    };
    v93 = {
      url = "github:arkenfox/user.js/93.0";
      flake = false;
    };
  };

  outputs = inputs@{ self, nixpkgs, master, ... }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
      extractor = pkgs.callPackage ./extractor { };
    in {
      packages.x86_64-linux.arkenfox-extractor = extractor;
      defaultPackage.x86_64-linux = extractor;
    };
}
