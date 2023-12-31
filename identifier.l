
/*lex code to determine whether input is an identifier or not*/

%{
#include <stdio.h>
%}  

%% 
^[a-zA-Z_][a-zA-Z0-9_]* { printf("Valid Identifier\n"); }
^[^a-zA-Z_] { printf("Invalid Identifier\n"); }
. ;
%%

int main()
{
    yylex();
    return 0;  // Added a return statement
}

int yywrap()
{
    return 1;
}
