{
  description = "Utilities to use arkenfox's user.js for Firefox";

  inputs = {
    nixpkgs.url = "nixpkgs/release-23.05";
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };
    pre-commit.url = "github:cachix/pre-commit-hooks.nix";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    pre-commit,
    flake-utils,
    ...
  }: let
    inherit (nixpkgs.lib) mapAttrs' nameValuePair;

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

    outputs = flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages."${system}";
      extractor = pkgs.callPackage ./extractor {};
      generator = pkgs.callPackage ./generator {arkenfox-extractor = extractor;};
    in {
      checks.pre-commit-check = pre-commit.lib."${system}".run {
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
            entry = "${pkgs.perl.passthru.pkgs.PerlTidy}/bin/perltidy -b";
          };
        };
      };

      packages =
        {
          arkenfox-extractor = extractor;
          arkenfox-generator = generator;
          arkenfox-doc-css = pkgs.writeText "style.css" (builtins.readFile ./doc/style.css);
          default = extractor;
        }
        // (docs pkgs);
    });
  in
    outputs
    // {
      overlays = {
        arkenfox = _: prev: (let
          extractor = prev.callPackage ./extractor {};
        in
          {
            arkenfox-extractor = prev.callPackage ./extractor {};
            arkenfox-generator = prev.callPackage ./generator {arkenfox-extractor = extractor;};
            arkenfox-doc-css = prev.writeText "style.css" (builtins.readFile ./doc/style.css);
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
