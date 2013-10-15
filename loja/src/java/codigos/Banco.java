package codigos;

import java.sql.Connection;
import java.sql.DriverManager;

public class Banco {
    String url = "jdbc:postgresql://localhost:5432/lpoow";
    String user = "postgres";
    String password = "postgres123";
    Connection con;
    public void conectar(){
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(url, user, password);
            System.out.print("Conectado!!");
        } catch (Exception e) {
            System.out.print("Erro ao conectar!!");
            e.printStackTrace();
        }
    }
    public void desconectar(){
        try {
            con.close();
            System.out.print("Desconectado!!");
        } catch (Exception e) {
            System.out.print("Erro ao desconectar!!");
            e.printStackTrace();
        }
    }
}
