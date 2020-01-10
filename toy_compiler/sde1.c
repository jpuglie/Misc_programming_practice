#include "sde1.tab.c"
#include "lex.yy.c"
#include "yyerror.c"

int main()
{
	int val;
	printf("\n>>>> CONTEXTUAL parsing of string <<<<\n");
	val=yyparse();
	if(val==0){printf("****** congratulations; parse successful ******\n");}
//	else if(val==1){yyerror("syntax error");}
	else{printf("Sorry, Charlie, input string not in L(G)\n");}
	return(1);
}
