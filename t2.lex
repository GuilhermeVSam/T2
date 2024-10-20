import java_cup.runtime.Symbol
class sym { 
    public static final int PLUS = 0;
    public static final int MINUS = 1;
    public static final int TIMES = 2;
    public static final int DIVIDE = 3;
    public static final int LPAREN = 4;
    public static final int RPAREN = 5;
    public static final int ID = 6;
}

%%
%cup
digito = [0-9]
letra = [A-Za-z]
id = letra (letra|digito)*
%%

//Escrever aqui o código para identificar e retornar os Terminais mencionados acima
//Ex: "{id} { return new Symbol(sym.ID, yyline, yycolumn, yytext()); }"
//    " "+" { return new Symbol(sym.PLUS); }

^[0-9]{2}\.[0-9]{3}\.[0-9]{3}\/0001-[0-9]{2}$ { System.out.println("CNPJ"); }
^[A-z0-9]+@[A-z]+.[a-z]+$ { System.out.println("Email"); }
^http[s]?:[\/\]]{2}[A-z0-9]+[\.\]]com$ { System.out.println("URL"); }
^[0-9]{4}[-][0-9]{4}[-][0-9]{4}[-][0-9]{4}$ { System.out.println("Cartão de Crédito"); }
^[0-9]{4}[-][0-9]{4}$ { System.out.println("Telefone fixo"); }
^[A-Z]{3}\d[A-Z]\d\d$ { System.out.println("Placa Mercosul"); }
^[0-9]{13}$ { System.out.println("ISBN"); }
^[0-9]{1,3}[\.\]][0-9]{1,3}[\.\]][0-9]{1,3}[\.\]][0-9]{1,3}$ { System.out.println("IP"); }
^\d+(\.\d+)?(\QE\E\d+)?(\.\d+)?$ { System.out.println("Números Reais"); }
^".*"$ { System.out.println("String"); }
