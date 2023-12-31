/* Lex Program to check whether a number is Prime or Not */

%{
#include<stdio.h>
#include<stdlib.h>
int flag=0,c,j;
%}

%%
[0-9]+ {c=atoi(yytext); 
if(c==2){
  printf("\n Prime number");
}else if(c==0 || c==1){
  printf("\n Not a Prime number");
}else{
  for(j=2;j<c;j++){
    if(c%j==0){
    flag=1;
    break;}
  }
  if(flag==1)
  printf("\n Not a prime number");
  else if(flag==0)
  printf("\n Prime number");
}
}
%%

int main()
{
yylex();
}

int yywrap(){
return 0;
}
