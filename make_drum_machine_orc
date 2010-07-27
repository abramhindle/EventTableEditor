#!/usr/bin/perl
use HTML::Template;
my @list = ();
my $count = 7001;
my $name = shift(@ARGV);
my $files = \@ARGV;
my $start = 1;
if (scalar(@ARGV) < 1) {
	my @out = <STDIN>;
	$files = \@out;
}
foreach my $file (@$files) {
	chomp($file);
	push @list,{instr_num=>$count,instr_name=>$file,table_num=>$start};
	$count++;
	$start++;
}
my $t = HTML::Template->new_file('eventset.orc.tmpl', option => 'value',die_on_bad_params => 0);
$t->param(instrs=>\@list);
open(FILE,">$name.orc");
print FILE $t->output;
close(FILE);
$t = HTML::Template->new_file('eventset.sco.tmpl', option => 'value',die_on_bad_params => 0);
$t->param(instrs=>\@list);
open(FILE,">$name.sco");
print FILE $t->output;
close(FILE);
