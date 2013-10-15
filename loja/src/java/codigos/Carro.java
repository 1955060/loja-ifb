package codigos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Carro {

    private String fabricante;
    private String modelo;
    private String placa;
    private String combustivel;
    private String cor;
    private String img;
    private int ano;
    private int id;
    Banco banco = new Banco();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public String getCombustivel() {
        return combustivel;
    }

    public void setCombustivel(String combustivel) {
        this.combustivel = combustivel;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getFabricante() {
        return fabricante;
    }

    public void setFabricante(String fabricante) {
        this.fabricante = fabricante;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
    
    
    
    public String selecionado(Carro carro, String cor){
        if(carro.getCor().equals(cor)){
            return "selected";
        }else{
            return "";
        }
        
    }
    
    public void excluir(String id){
        try{
            banco.conectar();
            PreparedStatement statement = null;
            String sql = "delete from carro where id="+id+";";
//            String sql = "delete from carro where id=?;";
            statement = banco.con.prepareStatement(sql);
//            statement.setInt(1, Integer.parseInt(id));
            statement.execute();
            banco.desconectar();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public boolean editar(Carro carro) {
        try {
            banco.conectar();
            PreparedStatement statement;
            String sql = "update carro set ano=?,"
                    + "combustivel=?,cor=?,fabricante=?,modelo=?,placa=? where id=?;";
            statement = banco.con.prepareStatement(sql);
            statement.setInt(1, carro.getAno());
            statement.setString(2, carro.getCombustivel());
            statement.setString(3, carro.getCor());
            statement.setString(4, carro.getFabricante());
            statement.setString(5, carro.getModelo());
            statement.setString(6, carro.getPlaca());
            statement.setInt(7, carro.getId());
            statement.execute();
            banco.desconectar();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.print("Erro ao inserir...");
            return false;
        }
    }

    public boolean alterar(Carro carro){
        try{
        banco.conectar();
        PreparedStatement argumento;
        String sql = "UPDATE carro SET fabricante=?, modelo=?, placa=?,"
                + "ano=?, cor=?, combustivel=? WHERE id=?;";
        argumento = banco.con.prepareStatement(sql);
        argumento.setString(1, carro.getFabricante());
        argumento.setString(2, carro.getModelo());
        argumento.setString(3, carro.getPlaca());
        argumento.setInt(4, carro.getAno());
        argumento.setString(5, carro.getCor());
        argumento.setString(6, carro.getCombustivel());
        argumento.setInt(7, carro.getId());
        argumento.execute();
        banco.desconectar();
        return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
        
    }
    
    public Carro preEditar(int id) {
        Carro carro = new Carro();
        try {
            banco.conectar();
            String sql = "select * from carro where id=?;";
            PreparedStatement statement = banco.con.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                carro.setAno(rs.getInt("ano"));
                carro.setCombustivel(rs.getString("combustivel"));
                carro.setCor(rs.getString("cor"));
                carro.setFabricante(rs.getString("fabricante"));
                carro.setModelo(rs.getString("modelo"));
                carro.setPlaca(rs.getString("placa"));
                carro.setImg(rs.getString("img"));
                carro.setId(rs.getInt("id"));
            }
            banco.desconectar();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return carro;
    }

    public ArrayList<Carro> consultar(String ordem) {
        ArrayList<Carro> listaCarro = new ArrayList<Carro>();
        try {
            banco.conectar();
            PreparedStatement statement;
            String sql = "select * from carro order by ("+ ordem +");";
            statement = banco.con.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Carro carro = new Carro();
                carro.setAno(rs.getInt("ano"));
                carro.setCombustivel(rs.getString("combustivel"));
                carro.setCor(rs.getString("cor"));
                carro.setFabricante(rs.getString("fabricante"));
                carro.setModelo(rs.getString("modelo"));
                carro.setPlaca(rs.getString("placa"));
                carro.setImg(rs.getString("img"));
                carro.setId(rs.getInt("id"));
                listaCarro.add(carro);
            }
            banco.desconectar();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return listaCarro;
    }

    public boolean inserir(Carro carro) {
        try {
            banco.conectar();
            PreparedStatement statement;
            String sql = "insert into carro values(nextval('carro_id_seq')"
                    + ",?,?,?,?,?,?);";
            statement = banco.con.prepareStatement(sql);
            statement.setInt(1, carro.getAno());
            statement.setString(2, carro.getCombustivel());
            statement.setString(3, carro.getCor());
            statement.setString(4, carro.getFabricante());
            statement.setString(5, carro.getModelo());
            statement.setString(6, carro.getPlaca());
            statement.execute();
            banco.desconectar();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.print("Erro ao inserir...");
            return false;
        }
    }

    public String marcado(Carro carro, String combustivel) {
        if (carro.getCombustivel().equals(combustivel)) {
            return "checked";
        } else {
            return "";
        }
    }

    boolean alterarImg(String nomeArquivo, int id) {
        try{
        banco.conectar();
        PreparedStatement argumento;
        String sql = "UPDATE carro SET img=? WHERE id=?;";
        argumento = banco.con.prepareStatement(sql);
        argumento.setString(1, nomeArquivo);
        argumento.setInt(2, id);
        argumento.execute();
        banco.desconectar();
        return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
}
