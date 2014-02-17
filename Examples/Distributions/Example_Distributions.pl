use strict;
use warnings;

#Importing all Function from the DCM_Parser Directory.Import specific Functions if you wish
use DCM_Parser;

#Getting the DCM File Name as a Command Line Parameter
DCM_File($ARGV[0]);

#Setting the Tag Values in the DCM to be Default which means German Tags
Default_Tags(0);


my ($Details,@Distributions);

#Function to return an Array Reference of all the Distribution Names
$Details=Distributions();

#Dereferencing the Array Reference
@Distributions=@$Details;

#Printing all the Details in the Array
foreach(@Distributions)
{
	print "	DISTRIBUTION : ",$_,"\n";
}
