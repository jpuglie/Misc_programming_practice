***SDE1 Important file Contents***

sde1.in-
flex file used in the project. I wrote my flex file to return tokens for each of the allowed characters (a-e),
as well as a token for characters not in L(G) called NEG that serves as a failure token.

sde1.y-
bison file used in the project. I simply use if-statements to check for the two proper L(G) cases, and then a common recursive approach
for each token type

sde1.c-
The driver c file with main() function

yyerror.c-
error handling file that holds the error function for a project,



Pledge: 
On my honor I have neither given nor received aid on this exam.
