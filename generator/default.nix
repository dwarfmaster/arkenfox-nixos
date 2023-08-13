{
  stdenv,
  writeScriptBin,
  perl,
  makeWrapper,
  git,
  jq,
  arkenfox-extractor,
  ...
}: let
  script = writeScriptBin "arkenfox-generator" ''
    #!${perl}/bin/perl

    ${builtins.readFile ./generator.pl}
  '';
in
  stdenv.mkDerivation {
    pname = "arkenfox-generator";
    version = "1.0";
    src = script;
    buildInputs = [makeWrapper git arkenfox-extractor];
    installPhase = ''
      mkdir -p $out/bin
      cp $src/bin/arkenfox-generator $out/bin
      wrapProgram $out/bin/arkenfox-generator \
        --prefix PATH : ${arkenfox-extractor}/bin \
        --prefix PATH : ${git}/bin \
        --prefix PATH : ${jq}/bin
    '';
  }
