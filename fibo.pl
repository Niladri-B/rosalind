use 5.014;
use warnings;

#Code to implement Fibonacci sequence
#Fn = Fn-1 + Fn-2 
#Implementation for computation of no. of rabbit pairs in "nth" generation
#i.e no. of rabbits in any given generation is equal to sum of rabbits in previous 2 generations

#Each generation from 3rd month onwards proceeds like this :
#month no. = mature pairs x repr rate + prev total
#ie
#month 3 = 	1x3 + 1 = 4 # 0th iteration
#month 4 =	1x3 + 4 = 7 # 1st iteration
#month 5 = 	4x3 + 7 = 19 # 2nd iteration
#month 6 = 	7x3 + 19 = 40 # 3rd iteration
#
#
#month n = 	$m x $repr + $n-1 where $m = $n-1 => ($n-1 * $repr + $n-1)

my $month = 29;#10; # Input variable
my $repr = 4;#3;  # Input variable


my $iteration = $month -3;
my $i = 0;
my $mature_pair = 1;
my $prev_total = 1;
my @mature_pair = (); #create empty list to store mature pair numbers : 4
my $total;

while ($i <= $iteration){# 0 <= 2

	
	if($i > 1){
		$mature_pair = $mature_pair[$i-2]; 
		$prev_total = $total; #replace prev_total with total ie 7
		push @mature_pair, $total;
		$total =  ($mature_pair*$repr)  + $prev_total ;# 4x3 + 7 = 19
		say "No. of rabbits = $total in month = ", $i+3;
	}elsif($i == 1){
		$mature_pair = 1;
		$prev_total = $total; #replace value of prev_total with total
		push @mature_pair, $total; #put the total value into the array as you'll need this for subsequent calculation
		$total =  ($mature_pair*$repr)  + $prev_total ;# 1x3 + 4 = 7 
		say "No. of rabbits = $total in month = ",$i+3;
	}else{
		$mature_pair = 1;
		$total = ($mature_pair*$repr) + $prev_total;# 1x3 + 1 = 4
		say "No. of rabbits = $total in month = ", $i+3;
	}
	$i++;
	#say "Array : @mature_pair";
}


#Exit
exit;
		
		

	
