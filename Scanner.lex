import java_cup.runtime.Symbol;

%%

%public
%class Yylex
%unicode
%cup

%{
    private Symbol symbol(int type){
        return new Symbol(type);
    }

    private Symbol symbol(int type, Object value){
        return new Symbol(type, value);
    }
%}
%%


\n                      {return symbol(sym.EOF);}
\s+ {}
[0-9]+                  {return symbol(sym.INT, yytext());}
[a-zA-Z_][a-zA-Z_0-9]*  {return symbol(sym.ID, yytext());}
"+"                     {return symbol(sym.PLUS);}
"-"                     {return symbol(sym.MINUS);}
"*"                     {return symbol(sym.TIMES);}
"/"                     {return symbol(sym.DIV);}
"("                     {return symbol(sym.LPAREN);}
")"                     {return symbol(sym.RPAREN);}
"="                     {return symbol(sym.ASSIGN); }
","                     {return symbol(sym.COMMA); }
";"                     {return symbol(sym.SEMICOLON); }
.                       {System.err.println("Caractere inválido: " + yytext());}