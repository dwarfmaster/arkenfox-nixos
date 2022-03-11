{
  description = "Utilities to use arkenfox's user.js for Firefox";

  inputs = {
    nixpkgs.url = "nixpkgs/release-21.11";
    master = {
      url = "github:arkenfox/user.js";
      flake = false;
    };
    "98.0" = {
      url = "github:arkenfox/user.js/98.0";
      flake = false;
    };
    "97.0" = {
      url = "github:arkenfox/user.js/97.0";
      flake = false;
    };
    "96.0" = {
      url = "github:arkenfox/user.js/96.0";
      flake = false;
    };
    "95.0" = {
      url = "github:arkenfox/user.js/95.0";
      flake = false;
    };
    "94.0" = {
      url = "github:arkenfox/user.js/94.0";
      flake = false;
    };
    "93.0" = {
      url = "github:arkenfox/user.js/93.0";
      flake = false;
    };
  };

  outputs = inputs@{ self, nixpkgs, ... }:
    let

      pkgs = import nixpkgs { system = "x86_64-linux"; };
      inherit (pkgs) lib;
      js = builtins.removeAttrs inputs [ "self" "nixpkgs" ];

      extractor = pkgs.callPackage ./extractor { };
      extract = import ./extractor/extract.nix { inherit pkgs extractor; };
      versions = builtins.attrNames js;

    in {
      packages.x86_64-linux.arkenfox-extractor = extractor;
      defaultPackage.x86_64-linux = extractor;
      lib.arkenfox = {
        supportedVersions = versions;
        extracted = lib.mapAttrs (_: v: import "${extract v}") js;
      };
    };
}
