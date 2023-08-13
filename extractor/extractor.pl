use warnings;
use strict;

my $true  = !0;
my $false = !1;

my $section_number         = "0000";
my $section_title          = "TOPLEVEL";
my $section_description    = "";
my $in_section_description = $false;
my @section_parrots        = ();
my %section_meta           = ();
my %section_links          = ();
my %viewed_sections        = ();

# See entry 0701 for testing and implementing the subsection metadata
my $subsection_number      = "0000";
my $subsection_title       = "";
my $in_subsection          = $false;
my $subsection_description = "";
my %subsection_meta        = ();
my %subsection_links       = ();
my %viewed_subsections     = ();

my $first_setting = $false;

sub nix_sanitize {
    my $str = $_[0];

    # Trim leading/trailing whitespace
    $str =~ s/^\s+|\s+$//g;
    $str =~ s/\\/\\\\/g;
    $str =~ s/"/\\"/g;
    $str =~ s/\n/\\n/g;
    return $str;
}

sub select_new {
    my ( $stub, %hash ) = @_;
    return $stub if not exists $hash{$stub};
    my $i = 1;
    for ( ; ; ) {
        my $attempt = "$stub-$i";
        return $attempt if not exists $hash{$attempt};
    }
}

sub select_new_section {
    my ($section) = @_;
    my $selected = select_new( $section, %viewed_sections );
    $viewed_sections{$selected} = ();
    return $selected;
}

sub select_new_subsection {
    my ($sub) = @_;
    my $selected = select_new( $sub, %viewed_subsections );
    $viewed_subsections{$selected} = ();
    return $selected;
}

sub close_section {
    print "    \"meta\": {\n";
    print "      \"title\": \"" . ( nix_sanitize $section_title) . "\",\n";
    print "      \"description\": \""
      . ( nix_sanitize $section_description) . "\",\n";
    keys %section_meta;
    while ( my ( $k, $v ) = each %section_meta ) {
        print "      \""
          . ( nix_sanitize $k)
          . "\": \""
          . ( nix_sanitize $v) . "\",\n";
    }
    print "      \"links\": {\n";
    my $first = $true;
    keys %section_links;
    while ( my ( $k, $v ) = each %section_links ) {
        if ( !$first ) {
            print ",\n";
        }
        $first = $false;
        print "        \"$k\": \"$v\"";
    }
    if ( !$first ) {
        print "\n";
    }
    print "      },\n";
    print "      \"parrots\": [\n";
    $first = $true;
    foreach my $parrot (@section_parrots) {
        if ( !$first ) {
            print ",\n";
        }
        $first = $false;
        print "        $parrot";
    }
    if ( !$first ) {
        print "\n";
    }
    print "      ]\n";
    print "    }\n";
    print "  }";

    $section_description = "";
    %section_meta        = ();
    %section_links       = ();
    @section_parrots     = ();
}

sub close_subsection {
    if ( !$first_setting ) {
        print "\n";
    }
    print "      ],\n";
    print "      \"meta\": {\n";
    print "        \"title\": \"" . ( nix_sanitize $subsection_title) . "\",\n";
    print "        \"description\": \""
      . ( nix_sanitize $subsection_description) . "\",\n";
    keys %subsection_meta;
    while ( my ( $k, $v ) = each %subsection_meta ) {
        print "        \""
          . ( nix_sanitize $k)
          . "\": \""
          . ( nix_sanitize $v) . "\",\n";
    }
    print "        \"links\": {\n";
    my $first = $true;
    keys %subsection_links;
    while ( my ( $k, $v ) = each %subsection_links ) {
        if ( !$first ) {
            print ",\n";
        }
        $first = $false;
        print "          \"$k\": \"$v\"";
    }
    if ( !$first ) {
        print "\n";
    }
    print "        }\n";
    print "      }\n";
    print "    },\n";

    $subsection_description = "";
    %subsection_links       = ();
    %subsection_meta        = ();
}

my $first_section = $true;
print "{\n  \"$section_number\": {\n";
while ( my $line = <> ) {

    # Section description
    if ($in_section_description) {
        if    ( $line =~ /\*\*\*\/$/ ) { $in_section_description = $false; }
        elsif ( $line =~ /^\s*\[(\d+)\] (.*)$/ ) { $section_links{$1} = $2; }
        elsif ( $line =~ /^\s*\[(.*)\] (.*)$/ )  { $section_meta{$1}  = $2; }
        else {
            $line =~ /^\s+(.*)$/;
            $section_description = "$section_description\n$1";
        }
    }

    # Preference
    elsif ( $line =~ /^\s*user_pref\("(.*)", (.*)\);/ ) {
        if ( $1 eq "_user.js.parrot" ) {
            push @section_parrots, "$2";
            next;
        }
        $in_subsection or die "Found preference \"$1\" outside subsection";
        if ( !$first_setting ) {
            print ",\n";
        }
        $first_setting = $false;
        print "        { \"name\": \"$1\", \"enabled\": true, \"value\": $2 }";
    }

    # Disabled preference
    elsif ( $line =~ /^\s.*\/\/ user_pref\("(.*)", (.*)\);/ ) {
        if ( $1 eq "_user.js.parrot" ) {
            push @section_parrots, "$2";
            next;
        }
        $in_subsection or die "Found preference \"$1\" outside subsection";
        if ( !$first_setting ) {
            print ",\n";
        }
        $first_setting = $false;
        print "        { \"name\": \"$1\", \"enabled\": false, \"value\": $2 }";
    }

    # Subsection meta
    elsif ( $in_subsection and $line =~ /^\s*\* \[(\d+)\] (.*?)( \*\*\*\/)?$/ )
    {
        $subsection_links{$1} = $2;
    }
    elsif ( $in_subsection and $line =~ /^\s*\* \[(.*)\] (.*?)( \*\*\*\/)?$/ ) {
        $subsection_meta{$1} = $2;
    }
    elsif ( $in_subsection and $line =~ /^\s*\* (.*?)( \*\*\*\/)?$/ ) {
        $subsection_description = "$subsection_description\n$1";
    }

    # Subsection
    elsif ( $line =~ /^\/\* (\d\d\d\d): (.*?)( \*\*\*\/)?$/ ) {
        close_subsection() if $in_subsection;
        $subsection_number = select_new_subsection $1;
        $subsection_title  = $2;
        $in_subsection     = $true;
        $first_setting     = $true;
        print "    \"$subsection_number\": {\n      \"settings\": [\n";
    }

    # Section
    elsif ( $line =~ /^\/\*\*\* \[SECTION (\d\d\d\d)\]: (.*?)( \*\*\*\/)?$/ ) {
        $first_section = $false;
        my $temp_section_title  = $2;
        my $temp_section_number = $1;
        last if $temp_section_number eq "9999";
        $in_subsection = $false;
        close_subsection();
        close_section();
        if ( !$first_section ) {
            print ",\n";
        }
        $section_title          = $temp_section_title;
        $section_number         = select_new_section $temp_section_number;
        $in_section_description = $line !~ /\*\*\*\/$/;
        print "  \"$section_number\": {\n";

        if ( $section_number eq "9000" ) {
            $in_subsection     = $true;
            $subsection_number = "9000";
            $subsection_title  = "PERSONAL";
            $first_setting     = $true;
            print "    \"$subsection_number\": {\n      \"settings\": [\n";
        }
    }
}
close_subsection();
close_section();
if ( !$first_section ) {
    print "\n";
}
print "}\n";
