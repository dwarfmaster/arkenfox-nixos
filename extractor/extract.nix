{
  pkgs,
  extractor,
  ...
}: user-js:
pkgs.runCommandLocal "user.nix" {} ''
  ${extractor}/bin/arkenfox-extractor ${user-js}/user.js > $out
''
