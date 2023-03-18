{
  description = "Utilities to use arkenfox's user.js for Firefox";

  inputs = {
    nixpkgs.url = "nixpkgs/release-22.05";
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };
    pre-commit.url = "github:cachix/pre-commit-hooks.nix";
  };

  outputs = {
    self,
    nixpkgs,
    pre-commit,
    ...
  }: let
    pkgs = import nixpkgs {system = "x86_64-linux";};
    inherit (pkgs) lib callPackage;
    inherit (lib) mapAttrs' nameValuePair;

    extractor = callPackage ./extractor {};
    generator = callPackage ./generator {arkenfox-extractor = extractor;};

    ppVer = builtins.replaceStrings ["."] ["_"];
    docs = pkgs:
      (mapAttrs'
        (version: extracted:
          nameValuePair "arkenfox-v${ppVer version}-doc-static"
          (pkgs.callPackage ./doc {inherit extracted version;}))
        self.lib.arkenfox.extracted)
      // (mapAttrs'
        (version: extracted:
          nameValuePair "arkenfox-v${ppVer version}-doc"
          (pkgs.callPackage ./doc {
            inherit extracted version;
            css = "/style.css";
          }))
        self.lib.arkenfox.extracted);
  in {
    checks.x86_64-linux = {
      pre-commit-check = pre-commit.lib.x86_64-linux.run {
        src = ./.;
        hooks = {
          alejandra.enable = true;
          deadnix.enable = true;
          statix.enable = true;
          perltidy = {
            enable = true;
            name = "Tidy perl code";
            types = ["perl"];
            entry = "${pkgs.perl.passthru.pkgs.PerlTidy}/bin/perltidy -b";
          };
        };
      };
    };

    formatter.x86_64-linux = pkgs.alejandra;

    packages.x86_64-linux =
      {
        arkenfox-extractor = extractor;
        arkenfox-generator = generator;
        arkenfox-doc-css = pkgs.writeText "style.css" (builtins.readFile ./doc/style.css);
        default = extractor;
      }
      // (docs pkgs);

    overlays = {
      arkenfox = _: prev: (let
        extractor = prev.callPackage ./extractor {};
      in
        {
          arkenfox-extractor = prev.callPackage ./extractor {};
          arkenfox-generator = prev.callPackage ./generator {arkenfox-extractor = extractor;};
          arkenfox-doc-css = pkgs.writeText "style.css" (builtins.readFile ./doc/style.css);
        }
        // (docs prev));
      default = self.overlays.arkenfox;
    };

    lib.arkenfox = {
      supportedVersions = builtins.attrNames self.lib.arkenfox.extracted;
      extracted = import ./autogen;
    };

    hmModules = {
      arkenfox = import ./hm.nix self.lib.arkenfox.supportedVersions self.lib.arkenfox.extracted;
      default = self.hmModules.arkenfox;
    };
  };
}
