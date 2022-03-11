#!/usr/bin/env perl

use warnings;
use strict;

my $true = !0;
my $false = !1;


my $section_number = "0000";
my $section_title  = "TOPLEVEL";
my $section_description = "";
my $in_section_description = $false;
my @section_parrots = ();
my %section_meta = ();
my %section_links = ();

# See entry 0701 for testing and implementing the subsection metadata
my $subsection_number = "0000";
my $subsection_title  = "";
my $in_subsection = $false;
my $subsection_description = "";
my %subsection_meta = ();
my %subsection_links = ();

sub nix_sanitize {
    my $str = $_[0];
    $str =~ s/"/\\"/g;
    return $str;
}

sub close_section {
    print "    meta = {\n";
    print "      title = \"" . (nix_sanitize $section_title) . "\";\n";
    print "      description = ''$section_description\n";
    print "        '';\n";
    keys %section_meta;
    while(my($k, $v) = each %section_meta) {
        print "      \"" . (nix_sanitize $k) . "\" = \"" . (nix_sanitize $v) . "\";\n";
    }
    print "      links = {\n";
    keys %section_links;
    while(my($k, $v) = each %section_links) {
        print "        \"$k\" = \"$v\";\n";
    }
    print "      };\n";
    print "      parrots = [\n";
    foreach my $parrot(@section_parrots) {
        print "        $parrot\n";
    }
    print "      ];\n";
    print "    };\n";
    print "  };\n";

    $section_description = "";
    %section_meta = ();
    %section_links = ();
    @section_parrots = ();
}

sub close_subsection {
    print "      ];\n";
    print "      meta = {\n";
    print "        title = \"" . (nix_sanitize $subsection_title) . "\";\n";
    print "        description = ''$subsection_description\n";
    print "          '';\n";
    keys %subsection_meta;
    while(my ($k,$v) = each %subsection_meta) {
        print "        \"" . (nix_sanitize $k) . "\" = \"" . (nix_sanitize $v) . "\";\n"
    }
    print "        links = {\n";
    keys %subsection_links;
    while(my ($k,$v) = each %subsection_links) {
        print "          \"$k\" = \"$v\";\n"
    }
    print "        };\n";
    print "      };\n";
    print "    };\n";

    $subsection_description = "";
    %subsection_links = ();
    %subsection_meta = ();
}

print "{\n  \"$section_number\" = {\n";
while(my $line = <>) {
    # Section description
    if($in_section_description) {
        if($line =~ /\*\*\*\/$/) { $in_section_description = $false; }
        elsif($line =~ /^\s*\[(\d+)\] (.*)$/) { $section_links{$1} = $2; }
        elsif($line =~ /^\s*\[(.*)\] (.*)$/)  { $section_meta{$1}  = $2; }
        else {
            $line =~ /^\s+(.*)$/;
            $section_description = "$section_description\n          $1";
        }
    }
    # Preference
    elsif($line =~ /^\s*user_pref\("(.*)", (.*)\);/) {
        if($1 eq "_user.js.parrot") {
            push @section_parrots, "$2";
            next;
        }
        $in_subsection or die "Found preference \"$1\" outside subsection";
        print "        { name = \"$1\"; enabled = true; value = $2; }\n";
    }
    # Disabled preference
    elsif($line =~ /^\s.*\/\/ user_pref\("(.*)", (.*)\);/) {
        if($1 eq "_user.js.parrot") {
            push @section_parrots, "$2";
            next;
        }
        $in_subsection or die "Found preference \"$1\" outside subsection";
        print "        { name = \"$1\"; enabled = false; value = $2; }\n";
    }
    # Subsection meta
    elsif($in_subsection and $line =~ /^\s*\* \[(\d+)\] (.*?)( \*\*\*\/)?$/) {
        $subsection_links{$1} = $2;
    } elsif($in_subsection and $line =~ /^\s*\* \[(.*)\] (.*?)( \*\*\*\/)?$/) {
        $subsection_meta{$1} = $2;
    } elsif($in_subsection and $line =~ /^\s*\* (.*?)( \*\*\*\/)?$/) {
        $subsection_description = "$subsection_description\n            $1";
    }
    # Subsection
    elsif($line =~ /^\/\* (\d\d\d\d): (.*?)( \*\*\*\/)?$/) {
        $in_subsection and close_subsection();
        $subsection_number = $1;
        $subsection_title  = $2;
        $in_subsection = $true;
        print "    \"$subsection_number\" = {\n      settings = [\n";
    }
    # Section
    elsif($line =~ /^\/\*\*\* \[SECTION (\d\d\d\d)\]: (.*?)( \*\*\*\/)?$/) {
        my $temp_section_title = $2;
        my $temp_section_number = $1;
        if($temp_section_number eq "9999") { last; }
        $in_subsection = $false;
        close_subsection();
        close_section();
        $section_title = $temp_section_title;
        $section_number = $temp_section_number;
        $in_section_description = $line !~ /\*\*\*\/$/;
        print "  \"$section_number\" = {\n";
        if($section_number eq "9000") {
            $in_subsection = $true;
            $subsection_number = "9000";
            $subsection_title  = "PERSONAL";
            print "    \"$subsection_number\" = {\n      settings = [\n";
        }
    }
}
close_subsection();
close_section();
print "}\n";
