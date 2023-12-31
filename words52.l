/*lex program to count words that are less than 5 and greater than 2 */

%{
int count = 0;
%}

%%
[a-zA-Z]+ {
 if(yyleng>2 && yyleng<5){
   count++;
 }
 printf("Number of words with length between 2 and 5 characters: %d\n", count);
 }
.|\n;
%%

int main() {
    yylex(); 
}

int yywrap(){
  return 0;
}