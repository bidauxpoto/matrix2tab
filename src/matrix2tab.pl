#!/usr/bin/perl
use warnings;
use strict;
use Getopt::Long;
$,="\t";
$\="\n";

$SIG{__WARN__} = sub {die @_};

my $usage = "$0 [-h|help] ]\n";

my $help=0;
GetOptions (
	'h|help' => \$help,
) or die($usage);

if($help){
	print $usage;
	exit(0);
}

$_=<>;
chomp;
my @header = split /\t/,$_,-1;

while(<>){
	chomp;
	my @F = split /\t/,$_,-1;
	my $row_id=shift @F;
	my $i=1;
	foreach my $f (@F){
		print $row_id,$header[$i],$f;
		$i++
	}
}
