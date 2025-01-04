{
  description = "Utilities to use arkenfox's user.js for Firefox";

  inputs = {
    nixpkgs.url = "nixpkgs/release-23.05";
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
    inherit (nixpkgs.lib) mapAttrs' nameValuePair genAttrs;

    ppVer = builtins.replaceStrings ["."] ["_"];
    docs = pkgs:
      (mapAttrs' (
          version: extracted:
            nameValuePair "arkenfox-v${ppVer version}-doc-static" (
              pkgs.callPackage ./doc {inherit extracted version;}
            )
        )
        self.lib.arkenfox.extracted)
      // (mapAttrs' (
          version: extracted:
            nameValuePair "arkenfox-v${ppVer version}-doc" (
              pkgs.callPackage ./doc {
                inherit extracted version;
                css = "/style.css";
              }
            )
        )
        self.lib.arkenfox.extracted);

    systems = [
      "aarch64-darwin"
      "aarch64-linux"
      "x86_64-darwin"
      "x86_64-linux"
    ];
    forEachSystem = genAttrs systems;
    pkgsForEach = nixpkgs.legacyPackages;
  in {
    checks = forEachSystem (system: {
      pre-commit-check = pre-commit.lib.${system}.run {
        src = ./.;
        hooks = {
          alejandra.enable = true;
          alejandra.excludes = ["autogen"];
          deadnix.enable = true;
          statix.enable = true;
          statix.settings.ignore = ["autogen/*"];
          perltidy = {
            enable = true;
            name = "Tidy perl code";
            types = ["perl"];
            entry = "${pkgsForEach.${system}.perl.passthru.pkgs.PerlTidy}/bin/perltidy -b";
          };
        };
      };
    });

    packages = forEachSystem (
      system: let
        pkgs = pkgsForEach.${system};
      in
        {
          arkenfox-extractor = pkgs.callPackage ./extractor {};
          arkenfox-generator = pkgs.callPackage ./generator {
            inherit (self.packages.${system}) arkenfox-extractor;
          };
          arkenfox-doc-css = pkgs.writeText "style.css" (builtins.readFile ./doc/style.css);
          default = self.packages.${system}.arkenfox-extractor;
        }
        // (docs pkgs)
    );

    overlays = {
      arkenfox = _: prev: (
        let
          extractor = prev.callPackage ./extractor {};
        in
          {
            arkenfox-extractor = extractor;
            arkenfox-generator = prev.callPackage ./generator {arkenfox-extractor = extractor;};
            arkenfox-doc-css = prev.writeText "style.css" (builtins.readFile ./doc/style.css);
          }
          // (docs prev)
      );
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
