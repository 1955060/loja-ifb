//Classe de conexão com banco de dados.
package codigos;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @author ifb
 */

public class BancoDeDados {
    
    private String url = "jdbc:postgresql://localhost:5432/lpoow";
    private String user = "postgres";
    private String pass = "postgres123";
    Connection con;
    
    public void conectar() {
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(url, user, pass);
            System.out.println("Conexão estabelecida");
        } catch (Exception e) {
            System.err.println("Não foi possivel conectar ao banco de dados");
            e.printStackTrace();
        }
    }

    public void desconectar() {
        try {
            con.close();
            System.out.println("Conexão encerrada");
        } catch (Exception e) {
            System.err.println("Não foi possivel desconectar");
            e.printStackTrace();
        }
    }
}
