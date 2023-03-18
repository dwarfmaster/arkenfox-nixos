use warnings;
use strict;

my $true = !0;
my $false = !1;

open (my $git, '-|', "git ls-remote https://github.com/arkenfox/user.js") or die $!;
open (my $default, '>', "default.nix") or die $!;
print $default "{\n";
while (my $line = <$git>) {
  if($line =~ m/^.{40}\s+refs\/tags\/(\d+\.\d)/) {
    my $version = $1;
    my $script = "curl -s https://raw.githubusercontent.com/arkenfox/user.js/$version/user.js | arkenfox-extractor > $version.nix";
    system $script;
    print $default "  \"$version\" = import ./$version.nix;\n";
  }
}
print $default "}\n";
