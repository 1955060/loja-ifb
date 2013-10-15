package objeto;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Bicicleta {
    private int valor;    
    private String aro;    
    private String marca;
    private String cor;    
    private String categoria;
//    private String proprietario;
    private int id;    

    ConexaoBD banco= new ConexaoBD();
    
    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public String getAro() {
        return aro;
    }

    public void setAro(String aro) {
        this.aro = aro;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String selecionado(Bicicleta bicicleta, String cor){
        if (bicicleta.getCor().equals(cor)){
        return "selected";  //trará o valor da cor selecionado/armazenado no banco
    }else{
            return "";
        }
    }
    
    public String marcado(Bicicleta bicicleta, String aro){  //para o checked
        if (bicicleta.getAro().equals(aro)){
        return "checked";  //trará o valor da cor selecionado/armazenado no banco
    }else{
            return "";
        }
    }
        
    public Bicicleta preEditar(int id){
        Bicicleta bicicleta= new Bicicleta();
        try{
            banco.conectar();
            String sql= "select * from bicicleta where id= ?;";  //o ? é o id solicitado
            PreparedStatement statement = banco.con.prepareStatement(sql);
            statement.setInt(1, id);  //o 1 é para o primenro campo dos dados do formulario
            ResultSet rs= statement.executeQuery();
            if (rs.next()){
                bicicleta.setCor(rs.getString("cor"));
                bicicleta.setCategoria(rs.getString("categoria"));
                bicicleta.setMarca(rs.getString("marca"));
                bicicleta.setAro(rs.getString("aro"));
                bicicleta.setValor(rs.getInt("valor"));
                bicicleta.setId(rs.getInt("id"));
            }
            
            banco.desconectar();
        }catch(Exception e){
            e.printStackTrace();
        }
        return bicicleta;
    }
    
    public boolean alterar(Bicicleta bicicleta){
        try {
            banco.conectar();
            PreparedStatement argumento;
            String sql= "update bicicleta set cor=?, categoria=?, marca=?,  aro=?, valor=?"
                    + " where id=?;";
            argumento= banco.con.prepareStatement(sql);
            argumento.setString(1, bicicleta.getCor());
            argumento.setString(2, bicicleta.getCategoria());
            argumento.setString(3, bicicleta.getMarca());
            argumento.setString(4, bicicleta.getAro());
            argumento.setInt(5, bicicleta.getValor());
//            argumento.setString(6, bicicleta.getProprietario());
            argumento.setInt(6, bicicleta.getId());
            argumento.execute();
  //          System.out.println("p3");
            banco.desconectar();
            return true;
            } catch (Exception e) {
            e.printStackTrace();
            System.out.printf("Erro ao alterar dados");
            return false;
            }
    }    

    public ArrayList<Bicicleta> consultar(){
        ArrayList<Bicicleta> listaBicicleta = new ArrayList<Bicicleta>();
            try {
            banco.conectar();
            PreparedStatement statement;
            String sql= "select * from bicicleta order by (id);";
            statement= banco.con.prepareStatement(sql);
            ResultSet rs= statement.executeQuery();
            while(rs.next()){
                Bicicleta bicicleta= new Bicicleta();
                bicicleta.setCor(rs.getString("cor"));
                bicicleta.setCategoria(rs.getString("categoria"));
                bicicleta.setMarca(rs.getString("marca"));
                bicicleta.setAro(rs.getString("aro"));
                bicicleta.setValor(rs.getInt("valor"));
                bicicleta.setId(rs.getInt("id"));
                listaBicicleta.add(bicicleta);
            }
  
            banco.desconectar();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaBicicleta;
    }
    
    public boolean inserir(Bicicleta bicicleta){
        System.out.println("p1");
        try {
            banco.conectar();
            PreparedStatement statement;
            String sql= "insert into bicicleta values (nextval('bicicleta_id_seq'), ?, ?, ?, ?, ?);";
            statement= banco.con.prepareStatement(sql);
            statement.setString(1, bicicleta.getCor());
            statement.setString(2, bicicleta.getCategoria());
            statement.setString(3, bicicleta.getMarca());
            statement.setString(4, bicicleta.getAro());
            statement.setInt(5, bicicleta.getValor());
//            System.out.println("p2");  verificação de linha de erro
            statement.execute();
  //          System.out.println("p3");
            banco.desconectar();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            System.out.printf("Erro ao inserir dados");
            return false;
        }
    }

    public boolean excluir(int id){
        try {
            banco.conectar();
            PreparedStatement argumento;
            String sql= "delete from bicicleta where id=?;";
            argumento= banco.con.prepareStatement(sql);
            argumento.setInt(1, id);
            argumento.execute();
  //          System.out.println("p3");
            banco.desconectar();
            return true;
            } catch (Exception e) {
            e.printStackTrace();
            System.out.printf("Erro ao exlcuir dados");
            return false;
            }
    }    
}