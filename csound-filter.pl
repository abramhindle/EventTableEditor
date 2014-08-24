#!/usr/bin/perl
use strict;
use sigtrap qw(die normal-signals);
use Time::HiRes qw( time );
my $s = time();
$| = 1;
my $outfile = shift @ARGV || "out.sco";
open(FILE, '>', $outfile);
#local $SIG{PIPE} = sub { close(FILE); die "SIG PIPE"};
#local $SIG{KILL} = sub { close(FILE); die "SIG KILL"};
#local $SIG{TERM} = sub { close(FILE); die "SIG KILL"};
while(<>) {
	chomp;
	my $line = $_;
	my ($i,$time,@rest) = split(/\s+/,$line);
	my $otime = sprintf("%0.4f",$time + time() - $s);
	print $line,$/;
	print FILE (join(" ",$i,$otime,@rest),$/);
}
close(FILE);
END {
	close( FILE );
}
