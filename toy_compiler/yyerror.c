int yyerror(s)
	char *s;
{
	printf("%s\n",s);
//	printf("Sorry, Charlie, input string not in L(G)\n");
	return(-1);
}
