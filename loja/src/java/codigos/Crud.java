//Classe Crud: Cadastrar, editar, excluir...
package codigos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Crud {
    
    BancoDeDados bd = new BancoDeDados();
    
    public boolean inserir(Computador computador){
        try {
            bd.conectar();
            PreparedStatement stm;
            String sql = "insert into computador values (nextval('computador_id_seq'),?,?,?,?,?,?);";
            stm = bd.con.prepareStatement(sql);
            stm.setString(1,computador.getPlacaM());
            stm.setString(2,computador.getMemoria());
            stm.setString(3,computador.getCpu());
            stm.setString(4,computador.getVideo());
            stm.setString(5,computador.getHd());
            stm.setDouble(6,computador.getPreco());
            stm.execute();
            stm.close();
            bd.con.close();
            return true;
        } catch(Exception e){
            System.err.println("Não foi possível inserir os dados");
            e.printStackTrace();
            return false;
        }
    }
    
    public boolean alterar(Computador computador){
        try {
            bd.conectar();
            PreparedStatement stm;
            String sql = "update computador set placam = ?,  memoria = ?, cpu = ?, video = ?, hd = ?, preco = ? where id = ?;";
            stm = bd.con.prepareStatement(sql);
            stm.setString(1,computador.getPlacaM());
            stm.setString(2,computador.getMemoria());
            stm.setString(3,computador.getCpu());
            stm.setString(4,computador.getVideo());
            stm.setString(5,computador.getHd());
            stm.setDouble(6,computador.getPreco());
            stm.setInt(7, computador.getId());
            stm.execute();
            stm.close();
            bd.con.close();
            return true;
        } catch(Exception e){
            System.err.println("Não foi possível alterar os dados");
            e.printStackTrace();
            return false;
        }
    }
    
    public ArrayList<Computador> consultar() {
        try {
            bd.conectar();
            PreparedStatement stm;
            String sql = "select * from computador order by(id);";
            stm = bd.con.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            bd.con.close();
            ArrayList<Computador> computadores = new ArrayList();
            while (rs.next()) {
                Computador c = new Computador();
                c.setPlacaM(rs.getString("placam"));
                c.setMemoria(rs.getString("memoria"));
                c.setCpu(rs.getString("cpu"));
                c.setVideo(rs.getString("video"));
                c.setHd(rs.getString("hd"));
                c.setPreco(rs.getDouble("preco"));
                c.setId(rs.getInt("id"));
                
                computadores.add(c);
            }
            return computadores;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    
    public Computador consultar(int id){
        try {
            bd.conectar();
            PreparedStatement stm;
            String sql = "select * from computador where id = ?;";
            stm = bd.con.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            Computador c = new Computador();
            
            rs.next();
            c.setPlacaM(rs.getString("placam"));
            c.setMemoria(rs.getString("memoria"));
            c.setCpu(rs.getString("cpu"));
            c.setVideo(rs.getString("video"));
            c.setHd(rs.getString("hd"));
            c.setPreco(rs.getDouble("preco"));
            c.setId(rs.getInt("id"));
            bd.con.close();
            return c;
            
        } catch(Exception e){
            System.err.println("Não foi possivel obter os dados para edição");
            e.printStackTrace();
            return null;
        }
    }
    
    public boolean excluir(int id){
        try {
            bd.conectar();
            PreparedStatement stm;
            String sql = "delete from computador where id = ?;";
            stm = bd.con.prepareStatement(sql);
            stm.setInt(1, id);
            stm.execute();
            stm.close();
            bd.con.close();
            return true;
        }catch(Exception e){
            System.out.println("Não foi possivel deletar o computador");
            e.printStackTrace();
            return false;
        }
    }  
}
