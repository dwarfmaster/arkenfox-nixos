
extracted:

{ config, lib, pkgs, ... }:

let

  inherit (lib) types;

  cfg = config.programs.firefox;
  version = "${config.programs.firefox.package.version}";
  ext = extracted."${cfg.arkenfoxVersion}";

in {
  options.programs.firefox = {
    enableArkenfox = lib.mkEnableOption "arkenfox support in profiles";
    arkenfoxVersion = lib.mkOption {
      description = "The version of arkenfox user.js used";
      type = types.str;
      default = "master";
    };
    profiles = lib.mkOption {
      type = types.attrsOf (types.submodule ({config, ...}: {
        options.arkenfox = lib.mkOption {
          description = "Setup arkenfox user.js in profile";
          type = import ./type.nix { extracted = ext; inherit pkgs lib; };
          default = { };
        };
        config = lib.mkIf cfg.enableArkenfox {
          settings = config.arkenfox.flatSettings;
        };
      }));
    };
  };

  config = lib.mkIf (cfg.enable && cfg.enableArkenfox && !(lib.hasPrefix cfg.arkenfoxVersion version)){
    warnings = [
      "Arkenfox version ${cfg.arkenfoxVersion} does not match Firefox's (${version})"
    ];
  };
}
