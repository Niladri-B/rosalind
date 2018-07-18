use 5.014;
use warnings;

#Code to implement Mendel's First Law

my $k = 15;#HoD
my $m = 20;#HtD
my $n = 30;#hoR
my $total_individuals = $k+$m+$n;

#Total offspring calculation
my $i = 1;#iterator
my $offspring = 0;
my $multiplier = 2;
while ($i < $total_individuals){# $i= 3 <= 3
	$offspring = $total_individuals*$multiplier;
	$multiplier += 2;
	$i++;
}

say "Total offspring : $offspring\n";


###########################################################################3
#HT_HO

my $mn = $m * $n;
#Total progeny
my $mn_progeny = $mn *4;
my $mn_recessive = $mn_progeny * 0.5;
say "Recessive HT_HO : $mn_recessive";


#HT_HT

my $m_counter = 1; #iterator
my $recessive_cases_m = 0;

my $offspring_htd = 0;
my $local_multiplier_m = 2;

while( $m_counter < $m){
	#last if $m == 1; #abort if only 1 individual exists
	my $local_multiplier = 2;
	$offspring_htd = $m*$local_multiplier_m;
	$local_multiplier_m += 2;	
	$m_counter++;
}

$recessive_cases_m = $offspring_htd*0.25;
say "Total HtD-HtD offspring : $offspring_htd\tRecessive : $recessive_cases_m";



#HO_HO

my $n_counter = 1; #iterator
my $recessive_cases_n = 0;

my $offspring_hor = 0;
my $local_multiplier_n = 2;

while( $n_counter < $n){# 1 < $n ie 1 < 2 individuals OR 2 < 3 individuals etc
	#last if $n == 1; #abort if only 1 individual exists
	
	$offspring_hor = $n*$local_multiplier_n;
	$local_multiplier_n += 2;	
	$n_counter++;
}

$recessive_cases_n = $offspring_hor*1;
say "Total HoR-HoR offspring : $offspring_hor\tRecessive : $recessive_cases_n";


#Total_Recessive
my $total_recessive = $recessive_cases_n + $recessive_cases_m + $mn_recessive;
say "\nTotal recessive: $total_recessive";


#Total Dominant
my $dom = $offspring - $total_recessive;
my $dom_prob = $dom/$offspring;
say "Dominant prob: $dom_prob";

#Output file
open OUT, ">Output_mendel_1c.out" or die $!;
printf OUT "%.5f",$dom_prob;

#Exit
exit;
