//James Corbin jkc978
//STC Fall 2015
//Ligand-Receptor Prediction Project
//11/15/15
//
//other team members: Ashton Berger, Rachel-Anne Arthur
//and Willie Man

#include <math.h>
#include "lrheader.h"

extern char stor[8];


//converts a character array to decimal (ended with a comma)
double convert_to_dec(char stor[64]){
	int i = 0; 
	double a = 0.0,j = 0.0, b = 1.0, c = 0.0;
	//this section converts the integer part
	while (stor[i] != 44 && stor[i] != '.'){		//check for a comma
		if (stor[i] == 45){				//check for a minus sign
			b *= -1.0;					
			i++;
		}else if (j==0){				//first time through don't multiply by ten
			a += (stor[i] - 48);			//convert ascii to num and add it to total
			j++;					//increment the array pointers
			i++;
		}else{									
			a *= 10.0;				//multiply by ten
			a += (stor[i]-48);			//convert ascii to num and add to total
			j++;					//increment the array pointers
			i++;
		}
	}
	//this section converts the decimal part
	j = -1;							//intialize a raise to the power ^ index
	while (stor[i] != 44){
		if (stor[i] == '.'){
			i++;					//increment past the decimal point
		}
		c += (stor[i] - 48)*pow(10, j);			//convert ascii to num and add to total
		j--;						//decrement the ^ index
		i++;						//increment the array pointer
	}

return (a + c) * b;						//add the integer and decimal parts and return
}

