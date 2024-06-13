versions: extracted: {
  config,
  lib,
  ...
}: let
  inherit (lib) types;

  cfg = config.programs.firefox;
  version = if (config.programs.firefox.package != null)
    then "${config.programs.firefox.package.version}"
    else "unknown";
  ext = extracted."${cfg.arkenfox.version}";
in {
  options.programs.firefox = {
    arkenfox = {
      enable = lib.mkEnableOption "arkenfox support in profiles";
      version = lib.mkOption {
        description = "The version of arkenfox user.js used";
        type = types.enum versions;
        default = "master";
      };
    };
    profiles = lib.mkOption {
      type = types.attrsOf (types.submodule ({config, ...}: {
        options.arkenfox = lib.mkOption {
          description = "Setup arkenfox user.js in profile";
          type = import ./type.nix {
            extracted = ext;
            inherit lib;
          };
          default = {};
        };
        config = lib.mkIf cfg.arkenfox.enable {
          settings = config.arkenfox.flatSettings;
        };
      }));
    };
  };

  config = lib.mkIf (cfg.enable && cfg.arkenfox.enable && !(lib.hasPrefix cfg.arkenfox.version version)) {
    warnings = [
      "Arkenfox version ${cfg.arkenfox.version} does not match Firefox's (${version})"
    ];
  };
}
