for my $x (2..50) {
	$k = 2*log(600)/log($x);
	$x2 = 22000**(1/$k);
	print "$x $x2 $k\n";
}
