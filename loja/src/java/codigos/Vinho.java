package codigos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Vinho {

    private String produtor;
    private String pais;
    private String regiao;

    public String getTeorAcoolico() {
        return teorAcoolico;
    }

    public void setTeorAcoolico(String teorAcoolico) {
        this.teorAcoolico = teorAcoolico;
    }
    private String tipoUva;
    private int safra;
    private String teorAcoolico;
    private int id;

    public String getProdutor() {
        return produtor;
    }

    public void setProdutor(String produtor) {
        this.produtor = produtor;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getRegiao() {
        return regiao;
    }

    public void setRegiao(String regiao) {
        this.regiao = regiao;
    }

    public String getTipoUva() {
        return tipoUva;
    }

    public void setTipoUva(String tipoUva) {
        this.tipoUva = tipoUva;
    }

    public int getSafra() {
        return safra;
    }

    public void setSafra(int safra) {
        this.safra = safra;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Banco getBanco() {
        return banco;
    }

    public void setBanco(Banco banco) {
        this.banco = banco;
    }
    Banco banco = new Banco();

    public Vinho excluir(Vinho vinho) {
        try {
            banco.conectar();
            PreparedStatement statement;
            String sql = " delete  from vinho where id= ?;";
            statement = banco.con.prepareStatement(sql);
            statement.setInt(1, id);
            statement.execute();
            banco.desconectar();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return vinho;
    }

    public boolean alterar(Vinho vinho) {
        try {
            banco.conectar();
            PreparedStatement argumento;
            String sql = "update vinho set produtor= ?, pais=?, regiao=?,tipoUva=?, safra=?, teorAlcoolico=? where id=?; ";
            argumento = banco.con.prepareStatement(sql);
            argumento.setString(1, vinho.getProdutor());
            argumento.setString(2, vinho.getPais());
            argumento.setString(3, vinho.getRegiao());
            argumento.setString(4, vinho.getTipoUva());
            argumento.setInt(5, vinho.getSafra());
            argumento.setString(6, vinho.getTeorAcoolico());
            argumento.setInt(7, vinho.getId());
            argumento.execute();
            banco.desconectar();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }


    public Vinho preEditar(int id) {
        Vinho vinho = new Vinho();

        try {
            banco.conectar();
            PreparedStatement statement;
            String sql = "select * from vinho where id= ?;";
            statement = banco.con.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {

                vinho.setProdutor(rs.getString("produtor"));
                vinho.setPais(rs.getString("pais"));
                vinho.setRegiao(rs.getString("regiao"));
                vinho.setTipoUva(rs.getString("tipoUva"));
                vinho.setSafra(rs.getInt("safra"));
                vinho.setTeorAcoolico(rs.getString("teorAlcoolico"));
                vinho.setId(rs.getInt("id"));

            }

            banco.desconectar();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return vinho;
    }

    public ArrayList<Vinho> consultar() {

        ArrayList<Vinho> listaVinho = new ArrayList<Vinho>();
        try {
            banco.conectar();
            PreparedStatement statement;
            String sql = "select * from vinho order by (id);";
            statement = banco.con.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Vinho vinho = new Vinho();
                vinho.setProdutor(rs.getString("produtor"));
                vinho.setPais(rs.getString("pais"));
                vinho.setRegiao(rs.getString("regiao"));
                vinho.setTipoUva(rs.getString("tipoUva"));
                vinho.setSafra(rs.getInt("safra"));
                vinho.setTeorAcoolico(rs.getString("teorAlcoolico"));
                vinho.setId(rs.getInt("id"));
                listaVinho.add(vinho);
            }

            banco.desconectar();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaVinho;
    }

    public boolean inserir(Vinho vinho) {
        try {
            banco.conectar();
            PreparedStatement statement;
            String sql = "insert into vinho values(nextval('vinho_id_seq'),?,?,?,?,?,?);";

            statement = banco.con.prepareStatement(sql);
            statement.setString(1, vinho.getProdutor());
            statement.setString(2, vinho.getPais());
            statement.setString(3, vinho.getRegiao());
            statement.setString(4, vinho.getTipoUva());
            statement.setInt(5, vinho.getSafra());
            statement.setString(6, vinho.getTeorAcoolico());
            
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
