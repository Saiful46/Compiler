/* C Declarations */

%{
	#include<stdio.h>
	#include <math.h>
    #define YYSTYPE int	
	int sym[26],check[26];
%}

/* BISON Declarations */

%token html_o html_c
%token head_o head_c body_o body_c
%token title_o title_c
%token h1_o h1_c h2_o h2_c h3_o h3_c h4_o h4_c h5_o h5_c h6_o h6_c p_o p_c button_o button_c pre_o pre_c address_o address_c
%token nl, any

/* Simple grammar rules */

%%

program: html_o nl s1 nl s2 nl html_c
		;
s1: head_o nl e1 nl head_c
		;
e1: title_o any title_c
		;
s2: body_o nl a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 body_c
		;
a1: h1_o any h1_c nl
		;
a2: h2_o any h2_c nl
		;
a3: h3_o any h3_c nl
		;
a4: h4_o any h4_c nl
		;
a5: h5_o any h5_c nl
		;
a6: h6_o any h6_c nl
		;
a7: p_o any p_c nl
		;
a8: button_o any button_c nl
		;
a9: pre_o any pre_c nl
		;
a10: address_o any address_c nl
		;


%%

int yywrap()
{
return 1;
}


yyerror(char *s){
	printf( "%s\n", s);
}
