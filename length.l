/*lex program to find the length of a string*/
%{
#include<stdio.h>
int totalLength = 0;
%}

%%
[a-zA-Z0-9]+ { totalLength = yyleng;
printf("Total length of given string is: %d\n", totalLength);}
. ;
%%

int main(){
    yylex();  
}

int yywrap(){
    return 1;
}
