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
      inherit (pkgs) lib callPackage;
      inherit (lib) mapAttrs mapAttrs' nameValuePair;
      js = builtins.removeAttrs inputs [ "self" "nixpkgs" ];

      extractor = callPackage ./extractor { };
      extract = import ./extractor/extract.nix { inherit pkgs extractor; };
      versions = builtins.attrNames js;

      docs =
        mapAttrs'
          (version: extracted: nameValuePair "arkenfox-v${version}-doc"
            (callPackage ./doc { inherit extracted version; }))
          self.lib.arkenfox.extracted;

      type = extracted: import ./type.nix { inherit extracted pkgs; lib = pkgs.lib; };

    in {
      packages.x86_64-linux = {
        arkenfox-extractor = extractor;
      } // docs;
      defaultPackage.x86_64-linux = extractor;

      lib.arkenfox = {
        supportedVersions = versions;
        extracted = mapAttrs (_: v: import "${extract v}") js;
        types = mapAttrs (_: type) self.lib.arkenfox.extracted;
      };

      hmModules.arkenfox = import ./hm.nix self.lib.arkenfox.extracted;
      hmModule = self.hmModules.arkenfox;
    };
}
