{
  description = "Utilities to use arkenfox's user.js for Firefox";

  inputs = {
    nixpkgs.url = "nixpkgs/release-22.05";
    master = {
      url = "github:arkenfox/user.js";
      flake = false;
    };
  # TODO replace as soon as the PR is merged 
    "107.0" = {
      type = "github";
      owner = "arkenfox";
      repo = "user.js";
      ref = "refs/pull/1579/head";
      flake = false;
    };
    "106.0" = { url = "github:arkenfox/user.js/106.0"; flake = false; };
    "105.0" = { url = "github:arkenfox/user.js/105.0"; flake = false; };
    "104.0" = { url = "github:arkenfox/user.js/104.0"; flake = false; };
    "103.0" = { url = "github:arkenfox/user.js/103.0"; flake = false; };
    "102.0" = { url = "github:arkenfox/user.js/102.0"; flake = false; };
    "101.0" = { url = "github:arkenfox/user.js/101.0"; flake = false; };
    "100.0" = { url = "github:arkenfox/user.js/100.0"; flake = false; };
    "99.0"  = { url = "github:arkenfox/user.js/99.0";  flake = false; };
    "98.0"  = { url = "github:arkenfox/user.js/98.0";  flake = false; };
    "97.0"  = { url = "github:arkenfox/user.js/97.0";  flake = false; };
    "96.0"  = { url = "github:arkenfox/user.js/96.0";  flake = false; };
    "95.0"  = { url = "github:arkenfox/user.js/95.0";  flake = false; };
    "94.0"  = { url = "github:arkenfox/user.js/94.0";  flake = false; };
    "93.0"  = { url = "github:arkenfox/user.js/93.0";  flake = false; };
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

      ppVer = builtins.replaceStrings ["."] ["_"];
      docs = pkgs:
        (mapAttrs'
          (version: extracted: nameValuePair "arkenfox-v${ppVer version}-doc-static"
            (pkgs.callPackage ./doc { inherit extracted version; }))
          self.lib.arkenfox.extracted)
        // (mapAttrs'
          (version: extracted: nameValuePair "arkenfox-v${ppVer version}-doc"
            (pkgs.callPackage ./doc { inherit extracted version; css = "/style.css"; }))
          self.lib.arkenfox.extracted);

      type = extracted: import ./type.nix { inherit extracted pkgs; lib = pkgs.lib; };

    in {
      packages.x86_64-linux = {
        arkenfox-extractor = extractor;
        arkenfox-doc-css = pkgs.writeText "style.css" (builtins.readFile ./doc/style.css);
        default = extractor;
      } // (docs pkgs);

      overlays = {
        arkenfox = final: prev: ({
          arkenfox-extractor = prev.callPackage ./extractor { };
          arkenfox-doc-css = pkgs.writeText "style.css" (builtins.readFile ./doc/style.css);
        } // (docs prev));
      };
      overlay = self.overlays.arkenfox;

      lib.arkenfox = {
        supportedVersions = versions;
        extracted = mapAttrs (_: v: import "${extract v}") js;
        types = mapAttrs (_: type) self.lib.arkenfox.extracted;
      };

      hmModules = {
        arkenfox = import ./hm.nix self.lib.arkenfox.supportedVersions self.lib.arkenfox.extracted;
        default = self.hmModules.arkenfox;
      };
    };
}
