//James Corbin jkc978
//STC Fall 2015
//Ligand-Receptor Prediction Project
//11/15/15
//
//other team members: Ashton Berger, Rachel-Anne Arthur
//and Willie Man

#include <stdio.h>
#include <stdlib.h>
#include "lrheader.h"

//global variables
char stor[64];					//temp storage array
double T = 0.0;
double table[25][25];
int filecols=0, filerows=0;

int main (){

int k = 0;					//counter to keep track of where we are in the file
int i, j, m;					//some index counters
int dummy;
char file[10000];				//this will allow input files of up to 100x100
FILE *p;					//file pointer to the input file
char file_name[100];				//file name string

//let's display a start screen and get some parameter input
printf("\n  Welcome to the Ligand-Receptor processing program\n\n");
printf("Please enter the file name to be processed:  ");
scanf("%s", file_name);
printf("\n You entered:  %s\n", file_name);
printf("\nPlease enter the number of Ligand columns in your input file:  ");
scanf("%u", &filecols);
printf("\nPlease enter the number of Receptor rows in your input file:  ");
scanf("%u", &filerows);

//now we open and copy in the file
if((p=fopen(file_name,"r"))==NULL){					//opens file, assigns ptr to p, cehcks for null ptr
	printf("\nUnable to open %s", file_name);
	exit(1);
}
fgets(file,10000,p);							//writes the input file to file
fclose(p);								//close the file because we are done with it

//now we need to parse the ascii file
while (file[k] != 13){							//this loop reads in the temp data
	stor[k] = file[k];						// 13 is the CR
	k += 1;
}
k++;
T = convert_to_dec(stor);						//convert the temp to a number
while (file[k] != 13){							//get rid of the column headers
	k++;
}
k++;
for (i=0; i<filerows; i++){
	for (j=0; j<filecols; j++){
		if (stor[0] == 'R'){					//forward past the row header
		j -= 1;
		}
		m = 0;
		//this loop reads in next data field// 13 is the CR and 44 is comma
		while (file[k] != 44 && file[k] != 13 && file[k] != 0){	
			stor[m] = file[k];					
			k += 1;
			m += 1;
		}
		stor[m] = 44;						//add the comma from the file
		k += 1;
		if (stor[0] != 'R'){					//forward past the row header
			table[i][j] = convert_to_dec(stor);
		}
	}
}
for (i=0; i<filerows; i++){
	for (j=0; j<filecols; j++){
		printf(" %-3.6f  ", table[i][j]);
	}
	printf("\n");
}
return 0;
}
