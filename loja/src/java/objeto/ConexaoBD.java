package objeto;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConexaoBD {
    String url= "jdbc:postgresql://localhost:5432/lpoow";  //lpoow
    String user= "postgres";
    String password= "postgres123";  //curso é 123456
    Connection con;
    
    public void conectar(){
        try {
            Class.forName("org.postgresql.Driver");
            con= DriverManager.getConnection(url, user, password);
            System.out.printf("Conexão ao banco de dados realizada");
        } catch (Exception e) {
            System.out.printf("Erro ao conectar ao banco de dados");
        }
    }
    
    public void desconectar(){
        try {
            con.close();
            System.out.printf("Banco de dados fechado");
        } catch (Exception e) {
            System.out.printf("Erro ao desconectar do banco de dados");
        }
    }
}
