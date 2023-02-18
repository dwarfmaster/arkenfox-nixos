{
  writeScriptBin,
  perl,
  ...
}:
writeScriptBin "arkenfox-extractor" ''
  #!${perl}/bin/perl

  ${builtins.readFile ./extractor.pl}
''
