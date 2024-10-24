import java.io.*;

public class Main {
    public static void main(String[] args) {
        try{
            Reader reader = new InputStreamReader(System.in);
            parser p = new parser(new Scanner(reader));
            Object result = p.parse().value;
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
