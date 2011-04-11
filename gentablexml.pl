$max = scalar(@ARGV) || 50;
my $len = 16;
if (scalar(@ARGV)==1) {
	if (($ARGV[0]) =~ /^\d+$/) {
		$max = shift(@ARGV);
	} else {
		$max = 1;
	}
}
print <<EOM;
<CSoundTables>
EOM
for my $i (1..$max) {
	my $arg = shift(@ARGV);
	my $name = "INSTR $i" ;
	if (defined($arg)) {
		my ($file) = ($arg =~ /\/([^\/]*)$/);
		if (length($file) > $len) {
			$file = substr($file,0,$len);
		}
		$name = "$i $file";
	}
print <<EOM;
<CSoundTable><name>$name</name><instr>6666</instr><tableNo>$_</tableNo><Grapher><min>0.0</min><max>1.0</max><start>0</start><end>128</end><data>
EOM
	for (0..128) {
		print "<d>0.0</d>";
	}
print <<EOM;
</data></Grapher></CSoundTable>
EOM
}
print <<EOM;
</CSoundTables>
EOM

