/*LEX program to count the number of vowels and consonants in given string.*/

%{
int vow=0;
int cons=0;
%}
%%
[aeiouAEIOU] {vow++;}
[a-zA-Z] {cons++;
printf("Number of consonants are: %d\n", cons);
printf("Number of vowels are: %d\n", vow);
}
%%

int main()
{
printf("Enter the string of vowels and consonents:");
yylex();

}

int yywrap(){
return 0;
}
