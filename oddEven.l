/*Lex program to take check whether the given number is even or odd */

%{
#include<stdio.h>
int i;
%}
%%
[0-9]+ {i=atoi(yytext);
if(i%2==0)
printf("Even");
else
printf("Odd");}
%%
int main()
{
yylex(); 
}


int yywrap(){
return 0;
} 