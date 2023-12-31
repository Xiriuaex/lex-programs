/*def section*/
%{
#include<stdio.h>
#include<string.h>
int i = 0;
%} 


%%
([a-zA-Z0-9])+ {i++;} /* Rule for counting number of words*/
"\n" {printf("%d\n", i); i=0;}
%%
int main()
{
yylex();
}

int yywrap()
{
return 0;
}