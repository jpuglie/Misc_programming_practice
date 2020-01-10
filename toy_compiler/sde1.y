%{
#include <stdio.h>
#include <ctype.h>
#include <string.h>
int yylex(void);
int yyerror(char *s);
%}

%token NEG
%token A
%token B
%token C
%token D
%token E

%% /* Grammar Rules */
s: string1 | string2; 

/* 
Constraints for L(G) defined by string1 and string2 
*/
string1: as bs cs ds es {if(($1==$5) && ($3==$4))
				return(0);
				else return(-1);}

/*		| as bs cs ds es neg {return(1);}

		| neg as bs cs ds es {return(1);}
		
		| as bs cs ds es as {return(1);} <------- attempt to get code for less basic examples, wasn't working*/ 
;

string2: es ds cs bs as {if(($1 == (2 * $5)) && ($3 == (3 * $4)) && ($2 == 2))
                                return(0);
                                else return(-1);}

/*		| es ds cs bs as neg {return(1);}

		| neg es ds cs bs as {return(1);}

		| es ds cs bs as es {return(1);}*/
; 

as: A as {$$=$2+1;}
;
as: A {$$=1;}
;

bs: B bs {$$=$2+1;}
;
bs: B {$$=1;}
;

cs: C cs {$$=$2+1;}
;
cs: C {$$=1;}
;

ds: D ds {$$=$2+1;}
;
ds: D {$$=1;}
;

es: E es {$$=$2+1;}
;
es: E {$$=1;}
;

/*neg: NEG neg {$$=$2+1;}
;
neg: NEG {$$=1;}*/
;
%%



