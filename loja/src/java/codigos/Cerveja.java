package codigos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Cerveja {

    private String cervejaria;
    private String paisOrigem;
    private String cor;
    private String graduacao;
    private String volume;
    private int id;

    public String getCervejaria() {
        return cervejaria;
    }

    public void setCervejaria(String cervejaria) {
        this.cervejaria = cervejaria;
    }

    public String getPaisOrigem() {
        return paisOrigem;
    }

    public void setPaisOrigem(String paisOrigem) {
        this.paisOrigem = paisOrigem;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

 
    public String getGraduacao() {
        return graduacao;
    }
   public void setGraduacao(String graduacao) {
        this.graduacao = graduacao;
    }

    public String getVolume() {
        return volume;
    }

    public void setVolume(String volume) {
        this.volume = volume;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    Banco banco = new Banco();

      public   Cerveja excluir(Cerveja cerveja) {
     try {
            banco.conectar();
            PreparedStatement statement;
            String sql = " delete  from cerveja where id= ?;";
            statement = banco.con.prepareStatement(sql);
            statement.setInt(1, id);
            statement.execute();
            banco.desconectar();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cerveja;
    }
    public boolean alterar(Cerveja cerveja) {
        try {
            banco.conectar();
            PreparedStatement argumento;
            String sql = "update cerveja set cervejaria=?, paisOrigem=?, cor=?,graduacao=?, volume=? where id=?; ";
            argumento = banco.con.prepareStatement(sql);
            argumento.setString(1, cerveja.getCervejaria());
            argumento.setString(2, cerveja.getPaisOrigem());
            argumento.setString(3, cerveja.getCor());
            argumento.setString(4, cerveja.getGraduacao());
            argumento.setString(5, cerveja.getVolume());
            argumento.setInt(6,cerveja.getId());
            argumento.execute();
            banco.desconectar();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }

     public Cerveja preEditar(int id) {
        Cerveja cerveja = new Cerveja();

        try {
            banco.conectar();
            PreparedStatement statement;
            String sql = "select * from cerveja where id= ?;";
            statement = banco.con.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {

                cerveja.setCervejaria(rs.getString("cervejaria"));
                cerveja.setPaisOrigem(rs.getString("paisOrigem"));
                cerveja.setCor(rs.getString("cor"));
                cerveja.setGraduacao(rs.getString("graduacao"));
                cerveja.setVolume(rs.getString("volume"));
                cerveja.setId(rs.getInt("id"));
  
            }

            banco.desconectar();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cerveja;
    }

    public ArrayList<Cerveja> consultar() {

        ArrayList<Cerveja> listaCerveja = new ArrayList<Cerveja>();
        try {
            banco.conectar();
            PreparedStatement statement;
            String sql = "select * from cerveja order by (id);";
            statement = banco.con.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Cerveja cerveja = new Cerveja();
                cerveja.setCervejaria(rs.getString("cervejaria"));
                cerveja.setPaisOrigem(rs.getString("paisOrigem"));
                cerveja.setCor(rs.getString("cor"));
                cerveja.setGraduacao(rs.getString("graduacao"));
                cerveja.setVolume(rs.getString("volume"));
                cerveja.setId(rs.getInt("id"));
                listaCerveja.add(cerveja);
            }

            banco.desconectar();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaCerveja;
    }

    public boolean inserir(Cerveja cerveja) {
        try {
            banco.conectar();
            PreparedStatement statement;
            String sql = "insert into cerveja values(nextval('cerveja_id_seq'),?,?,?,?,?);";

            statement = banco.con.prepareStatement(sql);
            statement.setString(1, cerveja.getCervejaria());
            statement.setString(2, cerveja.getPaisOrigem());
            statement.setString(3, cerveja.getCor());
            statement.setString(4, cerveja.getGraduacao());
            statement.setString(5, cerveja.getVolume());
            statement.execute();
            banco.desconectar();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.print("erro ao inserir");
            return false;
        }
    }
}
