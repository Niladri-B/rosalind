use 5.014;
use warnings;

#Code to compute mass of given protein string
my $protein = "LQQTNEVSARPDHYAKKRCCCGEFWTHCLLVTCMIWWWHLRKDFGGYEAFQYWTSYDCNSLYSFAQKFCGKDPPIARRPWFGYKSACKLNPFEYCHMYFHHYFTANPNSNHMHDMYSKFHAPWWHTTYMMWHKWSSHIEELTRLIHKCHAWHPPMTSFYGPNNVQFAIAWVMTMRNRTDFYSDNTLYIWLRMLVCCKAMIDIVFDLKRSLMAWAYFGDTQDQVSEHKMSCIFCCAKNWWLPLEEHKEVEYDIHKSAYMHPCAHHQHDKIFSHPTNGCEACGYDEFNSEMHEHLEAADSFYMCHGPLWIGKVDEHIYFKIDMDNKVALALACELQFMGMAETDCFVWSAEHNSAFQILWRYITTAQAANVIMLIHPMRYTGVCFPAHAQYKCKMPDKCNIFWENMHQKFVLIRAKKCITVYQQQVKWIMVWFYHSTMQRHLCNWMVAYAWRAHRSIACVYENMEEISEFHLTRTYEFYRADYDCWNHWGRSYQAHLENNTNRLEHTYYNHRDWMEPNWKTHYLWPNKHVKFKRNSIKLRMREGSWNQNYPYKDPPQQWWDVITIEHQFWYEWCIYLCSCEEKNMPIDEFHELMMGNWIHHKSARWILGYAFTREDGIIVSKRESWSIGTLYAWVKKEHCTENVYHMFFWAKIENNKPVVWWFMGTTDTQELWMDPLYASARCNHPNDTVIAWKGQPHQDCWFAQYRFNISDLNIFLTTPQNKSFRDFASYHCLYVYRDHCGVDVCDTYQRLTCAVPVMSHYWHLFWIDSRVFNSKMCEDWMHFRKQPRVPYAGAGSFFGFFMWDTPQQCDYWQLQHKNVKTEWCHDHYNQAPPAILGKCATDKTQPNTAEMTSGFKCDHESCWRIWLKTRDHADPRACGQYKIDHEHADKRQNKLWYNSVSGPAEYSEKWDYWHKFFHVVMFEQDLKWVEWCNGHILNIECYLHYPKTRDFKKFSCFTCNGGAQRHWGQEGACGIKRAYQLHLAQKRRDAYWRIVYYSW";#"SKADYEK";
my $len_pr = length $protein;

my $amino_mass;
my $i = 0;
while ($i<= $len_pr){
	my $substr = substr $protein, $i, 1;
	$amino_mass += amino_mass($substr);		
	$i++;
}

open OUT, ">Output_protein_mass.out" or die $!;
printf OUT ("%.3f",$amino_mass);

sub amino_mass{
	
	my ($amino_acid) = @_;
	
	my (%amino_masses) = (

	'A' =>   71.03711,
	'C' =>  103.00919,
	'D' =>  115.02694,
	'E' =>  129.04259,
	'F' =>  147.06841,
	'G' =>  57.02146,
	'H' =>  137.05891,
	'I' =>  113.08406,
	'K' =>  128.09496,
	'L' =>  113.08406,
	'M' =>  131.04049,
	'N' =>  114.04293,
	'P' =>  97.05276,
	'Q' =>  128.05858,
	'R' =>  156.10111,
	'S' =>  87.03203,
	'T' =>  101.04768,
	'V' =>  99.06841,
	'W' =>  186.07931,
	'Y' =>  163.06333 ,
	);
	
	if (exists $amino_masses{$amino_acid}){
		return $amino_masses{$amino_acid};
	}
	
}