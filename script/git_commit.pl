#!/usr/bin/perl
use strict;
use warnings;

my %design_type = (
    1 => "lib",
    2 => "axi",
    3 => "mxu",
    4 => "ram",
    5 => "top",
    6 => "ifu",
    7 => "idu", 
    8 => "lsu", 
    9 => "rf", 
    10 => "others",
);

my %verification_type = (
    1 => "checker",
    2 => "sequence",
    3 => "driver",
    4 => "intf",
    5 => "tc",
    6 => "env",
    7 => "cov", 
    7 => "monitor", 
    8 => "tr", 
    9 => "others",
);

my %script_type = (
    1 => "git",
    2 => "others",
);

my %base_type_dict = (
    1 => "Design",
    2 => "Verification",
    3 => "Script",
    4 => "Project",
);

my %type_connector = (
    "Design" => \%design_type,
    "Verification" => \%verification_type,
    "Script" => \%script_type,
);

sub show_options{

    while(1) {

        my (%hash) = @_;

        print "\n=== MENU ===\n";
        for (sort { $a <=> $b } keys %hash) {
            print "$_. $hash{$_}\n";
        }

        print "\nChoice: ";
        chomp(my $choice = <STDIN>);

        if (exists $hash{$choice}) {
            return $hash{$choice};
        } else {
            print "Invalid option!\n";
        }

    }
    
}

my $base_type = show_options(%base_type_dict);
print("$base_type");
my $detail_type = "";
if(exists($type_connector{$base_type})){
	$detail_type = show_options(%{ $type_connector{$base_type} });
	print("$detail_type");
}
print "\ncommit message: ";
chomp(my $commit_msg = <STDIN>);
print("$commit_msg");

system("git commit -m \"[$base_type][$detail_type] $commit_msg\"");

