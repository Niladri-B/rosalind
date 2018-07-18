#Script to extract motif positions from a longer genomic sequence
use 5.014;
use warnings;

my $string = 'ACGCCAAAACGCCAAGACACGCCAAACGCCAACTGCAACGCCAACACGCCAAACGCCAAACGCCAAACGCCAAGGTTCCTGCCTCGCAACACACGCCAAACGCCAACACGTACGCCAATAATGACGACGCCAACTACGCCAAACGCCAAAGACGCCAACACGCCAACACGCCAACACGCCAAACGCCAATCACGCCAAACGCCAACACATCTTCCACGCCAATTCTGTTCGACGCCAACTTTTACGCCAAGAGACGCCAAAAACGCCAATCAGCGTTTATTATAACGCCAAACGCCAAAGTGATCACGCCAAAACGCCAATACACGCCAAACGCCAAACGCCAAGAACGCCAAACGCCAATCCGTCAGAAACGCCAAACGCCAACTGCGCGGGGGACATACGCCAATACGCCAAGACGCCAAGTACGCCAAACGCCAATACGCCAATACGCCAAACGCCAAACGCCAAACGCCAACTCCTTACGCCAAAGAACGCCAAACGCCAAACGCCAATACGTACGCCAATAGTCACGCCAAACGCCAAACGCCAAGCTACGCCAATTGACGCCAAGTCACGCCAACACAACCCTGACCACGCCAACGCACGCCAATACACAACGATATACGCCAAATACGCCAAAGCTAACGCCAAGTTTCACGCCAAGAGGAACTCACGCCAATGCACGCCAAGTGACGCCAAACGCCAACTGACGCCAACTACGCCAACAAACGCCAACCGCACTACGTACGCCAAGACGCCAACCACGCCAATTTACGCCAAGAACGCCAATACGCCAATACGCCAAT';
#'GATATATGCATATACTT';

my $sub = 'ACGCCAAAC';
#'AT' ;
#'ATAT';
my $sub_len = length $sub;

#say length $sub;

my @string_split = split '', $string;
# say "@string_split";
my $string_split_length = @string_split;
# say "Length of string : $string_split_length";

# for (my $i = 0; $i <= $string_split_length; $i++){
# 	#say $string_split[$i];
# 	push my @arr, $string_split[$i];
# 	say @arr;
# }

# my @arr;
# foreach (@string_split){
# 	push @arr,$_;
# 	say @arr;
# }

# my $return = substr($string, 0, 4);
# say $return;
# my $return = substr($string, 1, 4);
# say $return;
# my $return = substr($string, 2, 4);
# say $return;
# my $return = substr($string, 3, 4);
# say $return;
# my $return = substr($string, 4, 4);
# say $return;

for (my $i = 0; $i <= $string_split_length - $sub_len; $i++){
	my $return = substr($string, $i, $sub_len);
	#say $return,",", $i+1 if $return eq $sub;
	say $i+1 if $return eq $sub;
}
