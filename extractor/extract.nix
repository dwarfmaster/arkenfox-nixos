{
  pkgs,
  extractor,
  ...
}: user-js:
pkgs.runCommandLocal "user.js" {} ''
  ${extractor}/bin/arkenfox-extractor ${user-js}/user.js > $out
''
