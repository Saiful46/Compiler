/* C Declarations */

%{
	#include<stdio.h>
	#include "anik.tab.h"
	#include<stdlib.h>
	extern int yylval;
%}

%%

"<html>" {
	return html_o;
}
"<head>" {
	return head_o;
}
"<title>" {
	return title_o;
}
"<\/title>" {
	return title_c;
}
"<\/head>" {
	return head_c;
}
"<body>" {
	return body_o;
}

"<h1>" {
	return h1_o;
}
"<\/h1>" {
	return h1_c;
}

"<h2>" {
	return h2_o;
}
"<\/h2>" {
	return h2_c;
}

"<h3>" {
	return h3_o;
}
"<\/h3>" {
	return h3_c;
}

"<h4>" {
	return h4_o;
}
"<\/h4>" {
	return h4_c;
}

"<h5>" {
	return h5_o;
}
"<\/h5>" {
	return h5_c;
}

"<h6>" {
	return h6_o;
}
"<\/h6>" {
	return h6_c;
}
"<p>" {
	return p_o;
}
"<\/p>" {
	return p_c;
}

"<button>" {
	return button_o;
}
"<\/button>" {
	return button_c;
}

"<pre>" {
	return pre_o;
}
"<\/pre>" {
	return pre_c;
}

"<address>" {
	return address_o;
}
"<\/address>" {
	return address_c;
}

"<\/body>" {
	return body_c;
}
"<\/html>" {
	return html_c;
}
[ ]*[a-zA-Z0-9!@#*(){}_+-,.:\|?\t ]*[ ]* {
	printf(yytext);
	printf("\n");
	return any;
}
[\n | ^\n] {
	return nl;
}

%%

/* user subroutines */

int main()
{
	yyin = fopen("in_anik.html","r");
	freopen("out_anik.txt","w",stdout);
	yyparse();

}
