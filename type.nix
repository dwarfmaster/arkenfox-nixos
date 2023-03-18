{
  extracted,
  lib,
}: let
  inherit (lib) types mapAttrs mapAttrsToList nameValuePair;

  mapListToAttrs = f: lst:
    builtins.listToAttrs (map f lst);

  # Settings module
  settingType = setting:
    types.submodule ({config, ...}: {
      options = {
        enable = lib.mkOption {
          description = "Enable the \"${setting.name}\" setting";
          type = types.bool;
          default = setting.enabled;
        };
        value = lib.mkOption {
          description = "The value of the \"${setting.name}\" setting";
          type = types.anything;
          default = setting.value;
        };
        flat = lib.mkOption {
          description = "Empty attrset in enable=false, the setting and its value otherwise";
          type = types.attrsOf types.anything;
          readOnly = true;
        };
      };
      config = {
        flat =
          if config.enable
          then {"${setting.name}" = config.value;}
          else {};
      };
    });
  settingOption = setting:
    nameValuePair setting.name
    (lib.mkOption {
      description = "Control the \"${setting.name}\" setting";
      type = settingType setting;
      default = {};
    });

  # Subsection modules
  subsectionType = name: sub:
    types.submodule ({config, ...}: {
      options =
        {
          enable = lib.mkEnableOption "settings for ${name}";
          flatSettings = lib.mkOption {
            description = "Flat attrset of all settings in subsection ${name} enabled";
            type = types.attrsOf types.anything;
            readOnly = true;
          };
        }
        // mapListToAttrs settingOption sub.settings;
      config = {
        enable = lib.mkDefault true;
        flatSettings =
          if config.enable
          then
            builtins.foldl' (x: y: x // y) {}
            (map (setting: config."${setting.name}".flat) sub.settings)
          else {};
      };
    });
  subsectionOption = name: sub:
    lib.mkOption {
      description = "${name}: ${sub.meta.title}\n${sub.meta.description}";
      type = subsectionType name sub;
      default = {};
    };

  # Section module
  sectionType = name: section: let
    subsections = builtins.removeAttrs section ["meta"];
  in
    types.submodule ({config, ...}: {
      options =
        {
          enable = lib.mkEnableOption "setting for ${name}";
          flatSettings = lib.mkOption {
            description = "Flat attrset of all settings in section ${name} enabled";
            type = types.attrsOf types.anything;
            readOnly = true;
          };
        }
        // mapAttrs subsectionOption subsections;
      config = {
        flatSettings =
          if config.enable
          then
            builtins.foldl' (x: y: x // y) {}
            (mapAttrsToList (name: _: config."${name}".flatSettings) subsections)
          else {};
      };
    });
  sectionOption = name: section:
    lib.mkOption {
      description = "${name}: ${section.meta.title}\n${section.meta.description}";
      type = sectionType name section;
      default = {};
    };

  # Top-level module
  type = types.submodule ({config, ...}: {
    options =
      {
        enable = lib.mkEnableOption "Arkenfox settings";
        flatSettings = lib.mkOption {
          description = "Flat attrset of all settings enabled";
          type = types.attrsOf types.anything;
          readOnly = true;
        };
      }
      // mapAttrs sectionOption extracted;
    config = {
      flatSettings =
        if config.enable
        then
          builtins.foldl' (x: y: x // y) {}
          (mapAttrsToList (name: _: config."${name}".flatSettings) extracted)
        else {};
    };
  });
in
  type
