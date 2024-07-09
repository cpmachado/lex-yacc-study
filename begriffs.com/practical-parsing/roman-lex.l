/* roman-lex: a program that reads roman numerals and add them up.
 * changes from tutorial:
 *  - Not fail on space
 */
%{
    #include <stdio.h>
    #include <stdlib.h>

    int total;
%}

%%

I { total += 1; }
V { total += 5; }
X { total += 10; }
L { total += 50; }
C { total += 100; }
D { total += 500; }
M { total += 1000; }

    /* Derived */
IV { total += 4; }
IX { total += 9; }
XL { total += 40; }
XC { total += 90; }
CD { total += 400; }
CM { total += 900; }

    /* fail on everything, except newline and space */
[\n ] ;

. { fprintf(stderr, "unexpected: %s\n", yytext); exit(1); }

%%

int main(void) {
    yylex();
    fprintf(yyout, "%d\n", total);
    return 0;
}
