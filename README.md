
# Arkenfox user.js module for NixOS + home-manager

## Motivation

Firefox's `user.js` can be used to store preferences and settings for Firefox,
but it is painful to manually edit. There is a popular `user.js` optimised for
ease of edition and hardening :
[Arkenfox's](https://github.com/arkenfox/user.js).

If one want to directly use it, there already is an option in home-manager to
use a `user.js` : `programs.firefox.profiles.<name>.extraConfig` and
`programs.firefox.profiles.<name>.settings`.

The problem with directly using Arkenfox's `user.js` is that handling updates to
file after having gone through it to edit your preferences is a bit of a pain.
In order to improve the situation, we implemented a script that parses
Arkenfox's `user.js` and generate a home-manager module that allows setting the
preferences using the merge algorithm of the NixOS module system. Furthermore,
it keeps the edits outside of the generated module. Any drift between the
settings and the `user.js` will be catched by the module type-system.

## Outputs

This flake exports a few things :
- the script used for the extraction as `packages.<system>.arkenfox-extractor`.
- the home-manager module as `hmModules.arkenfox`.
- a rendered documentation of each supported `user.js` version as
  `packages.<system>.arkenfox-v<version>-doc-static`. Here version can be either
  a numeric one like `103_0` or `master`.

## Home-manager module

To enable the module, you need to set both `programs.firefox.arkenfox.enable` to
true and `programs.firefox.arkenfox.version` to the version you want to use.
Ideally the version used is the same as Firefox's, but may differ if arkenfox
hasn't yet been updated, or you want to keep your previous settings with the new
Firefox version. In the case the versions do not match, a warning will be
displayed when generating the configuration.

Then the settings can be set profile-by-profile using
`programs.firefox.profiles.<name>.arkenfox`. The `user.js` file is subdivided
into sections, subsections and individual settings that all have a default
value, and may be commented or not. All this is present in the module. A setting
can be set with `<section-number>.<subsection-number>.<setting-name>.value` and
enabled with `<section-number>.<subsection-number>.<setting-name>.enable`.
Sections and subsections can also be enabled and disabled. A setting value is
only set if both its sections and subsection are enabled. Furthermore, a top
level `enable` flag is present.

Since Arkenfox's settings are *very* opinionated and shouldn't be used unless
they've been reviewed and agreed with, both the top level `enable` flag and all
sections `enable` flags are false by default. On the other hand, the subsections
`enable` flags are true by default.

For example, if you want to enable the `TOPLEVEL`, `STARTUP` and `GEOLOCATION`
sections, but still have firefox check if it is the default browser, and you
want to enable the search region setting that is commented in the default
`user.js` but keep its value, you would do:

```nix
{
  programs.firefox = {
    enable = true;
    arkenfox = {
      enable = true;
      version = "103.0";
    };
    
    profiles.Default.arkenfox = {
      enable = true;
      "0000".enable = true;
      "0001" = {
        enable = true;
        "0101"."browser.shell.checkDefaultBrowser".value = true;
      };
      "0002" = {
        enable = true;
        "0204"."browser.search.region".enable = true;
      };
    };
  };
}
```

## Documentation

Finding the section and subsection numbers and the option names can be a bit
complicated. The authoritative source of truth is of course the `user.js` file
on Arkenfox's github, which you should read, at least the section you enable.
For better usability, the metadata extracted is also used to generate an html
file that may be more agreeable looking through.

Targets `programs.<system>.arkenfox-v<version>-doc-static` will build this
`html` file. An example of a rendered documentation (WARNING: often outdated)
can be found [there](https://arkenfox.dwarfmaster.net). Each settings is
presented as a table with a checkbox indicating if it is enabled by default, its
name, and its default value.

You can build the documentation without copying the flake using (for example):
```shell
nix build "github:dwarfmaster/arkenfox-nixos#arkenfox-v103_0-doc-static"
```


