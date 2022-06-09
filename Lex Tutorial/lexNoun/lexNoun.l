%{
/*
 * this sample demonstrates (very) simple recognition:
 * a verb/not a verb.
 */

 /* Lex is a program that generates lexical analyzer. It is used with YACC parser generator. */
 /* YACC is a program that generates parser. It is used with Lex analyzer generator. */
 /* The lexical analyzer is a program that transforms an input stream into a sequence of tokens. */
 /* It reads the input stream and produces the source code as output through implementing the lexical analyzer in the C program. */
 /* Lex and YACC are used to generate parser for a language. */

 /*
 Firstly lexical analyzer creates a program lex.1 in the Lex language. Then Lex compiler runs the lex.1 program and produces a C program lex.yy.c.
Finally C compiler runs the lex.yy.c program and produces an object program a.out.
a.out is lexical analyzer that transforms an input stream into a sequence of tokens.

Lex Source -> Lex Compiler -> Lex.yy.c -> C Compiler -> a.out 
input stream -> a.out -> sequence of tokens

lex source is a source code of the lexical analyzer.
Lex compiler generates lexical analyzer.
lex.yy.c is a C program that implements the lexical analyzer.
c compiler is used to compile C program.
a.out is a lexical analyzer that transforms an input stream into a sequence of tokens.
input stream is a file that contains the source code.
sequence of tokens is the output of lexical analyzer.

Compiler is a program that translates a source code into machine code.
Compiler is used to translate a source code into machine code.
Parser is a program that translates a source code into a syntax tree.
A parser is a compiler or interpreter component that breaks data into smaller elements for easy translation into another language.

 */

/* { definitions }   
%%  
 { rules }   
%%   
{ user subroutines }   

Definitions include declarations of constant, variable and regular definitions.

Rules define the statement of form p1 {action1} p2 {action2}....pn {action}.

Where pi describes the regular expression and action1 describes the actions what action the lexical analyzer should take when pattern pi matches a lexeme.

User subroutines are auxiliary procedures needed by the actions. The subroutine can be loaded with the lexical analyzer and compiled separately.

yytext is a global variable that contains the lexeme.
yylex is a global variable that contains the token.

lexeme is a sequence of characters that is recognized by the lexical analyzer.
token is a number that is assigned to the lexeme.

*/



%}
%%

[\t ]+                   /* ignore whitespace */ ;

is |
am |
are |
were |
was |
be |
being |
been |
do |
does |
did  |
will |
would |
should |
can  |
could |
has  |
have |
had |
go { printf("%s: is a verb\n", yytext); }

very |
simply |
gently |
quietly |
calmly |
angrily { printf("%s: is an averb\n", yytext); }

to |
from |
behind |
above |
below |
between { printf("%s: is a preposition\n", yytext); }

if |
then |
and |
but |
or { printf("%s: is a conjunction\n", yytext); }

their |
my |
your |
his |
her |
its { printf("%s: is a adjective\n", yytext); }

I |
you |
he |
she |
we |
they { printf("%s: is a pronoun\n", yytext); }

[a-zA-Z]+ { printf("%s: is a noun\n", yytext); }

.|\n      { ECHO; /* normal default anyway */ }
%%

int main()
{
      yylex() ;
}