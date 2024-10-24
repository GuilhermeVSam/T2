import java_cup.runtime.*;
import java.io.*;
import java.util.Scanner;

class Main {
    public static void main(String[] args) throws Exception {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Please type your arithmetic expression:");

        while (scanner.hasNextLine()) {
            String line = scanner.nextLine();
            Reader reader = new StringReader(line);
            Yylex lexer = new Yylex(reader);
            parser p = new parser(lexer);

            try {
                Object result = p.parse().value;
                System.out.println("Result: " + result);
            } catch (Exception e) {
                System.err.println("Error: " + e.getMessage());
            }

            System.out.println("Please type your arithmetic expression:");
        }
    }
}