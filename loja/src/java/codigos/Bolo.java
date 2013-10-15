/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package codigos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author aluno
 */
public class Bolo {
    private String cliente;
    private String sabor;
    private String recheio;
    private String cobertura;
    private String complemento;
    private String tamanho;
    private String preco;
    private int id;
    Banco banco = new Banco();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public String getSabor() {
        return sabor;
    }

    public void setSabor(String sabor) {
        this.sabor = sabor;
    }

    public String getRecheio() {
        return recheio;
    }

    public void setRecheio(String recheio) {
        this.recheio = recheio;
    }

    public String getCobertura() {
        return cobertura;
    }

    public void setCobertura(String cobertura) {
        this.cobertura = cobertura;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getTamanho() {
        return tamanho;
    }

    public void setTamanho(String tamanho) {
        this.tamanho = tamanho;
    }

    public String getPreco() {
        return preco;
    }

    public void setPreco(String preco) {
        this.preco = preco;
    }

    public Banco getBanco() {
        return banco;
    }

    public void setBanco(Banco banco) {
        this.banco = banco;
    }
    
    
    public ArrayList<Bolo> consultar(){
ArrayList<Bolo> listarBolo = new ArrayList<Bolo>();
        try {
            banco.conectar();
            PreparedStatement statement;
            String sql ="select * from bolo order by (id);"; // Ordem de ID
            statement = banco.con.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                Bolo bolo= new Bolo();
                bolo.setCliente(rs.getString("cliente"));
                bolo.setSabor(rs.getString("sabor"));
                bolo.setRecheio(rs.getString("recheio"));
                bolo.setCobertura(rs.getString("cobertura"));
                bolo.setComplemento(rs.getString("complemento"));
                bolo.setTamanho(rs.getString("tamanho"));
                bolo.setPreco(rs.getString("preco"));
                bolo.setId(rs.getInt("id"));
                listarBolo.add(bolo);
                
            }
            banco.desconectar();
        } catch (Exception e) {
            e.printStackTrace();
        }
return listarBolo;
}
    public boolean alterar(Bolo bolo){
     try {
         banco.conectar();
         PreparedStatement statement;
         String sql ="UPDATE bolo SET cliente=?,sabor=?,recheio=?,cobertura=?,complemento=?,tamanho=?,preco=? WHERE id=?;";
         statement = banco.con.prepareStatement(sql);
         statement.setString(1, bolo.getCliente());
         statement.setString(2, bolo.getSabor()); //set=colocar e get=pegar
         statement.setString(3, bolo.getRecheio());
         statement.setString(4, bolo.getCobertura());
         statement.setString(5, bolo.getComplemento());
         statement.setString(6, bolo.getTamanho());
         statement.setString(7, bolo.getPreco());
         statement.setInt(8,bolo.getId());
         statement.execute();
         banco.desconectar();
         return true;
         
     } catch (Exception e) {
        System.out.printf("Erro ao Inserir os Dados...");
        return false;
     }
 }   
    public boolean excluir(Bolo bolo){
     try {
         banco.conectar();
         PreparedStatement statement;
         String sql ="delete from bolo where id=?;";
         statement = banco.con.prepareStatement(sql);
         statement.setInt(1,bolo.getId());
         statement.execute();
         banco.desconectar();
         return true;
         
     } catch (Exception e) {
        System.out.printf("Erro ao Excluir Dados");
        return false;
     }
 }   
 public Bolo preEditar(int id){
     Bolo bolo = new Bolo();
     try {
         banco.conectar();
         String sql="select * from bolo where id=?;";
         PreparedStatement statement = banco.con.prepareStatement(sql);
         statement.setInt(1, id);
         ResultSet rs = statement.executeQuery();
         if(rs.next()){
             bolo.setCliente(rs.getString("cliente"));
                bolo.setSabor(rs.getString("sabor"));
                bolo.setRecheio(rs.getString("recheio"));
                bolo.setCobertura(rs.getString("cobertura"));
                bolo.setComplemento(rs.getString("complemento"));
                bolo.setTamanho(rs.getString("tamanho"));
                bolo.setPreco(rs.getString("preco"));
                bolo.setId(rs.getInt("id"));
         }
         banco.desconectar();
     } catch (Exception e) {
     e.printStackTrace();
     }
     return bolo;
 }
 
 public String marcado(Bolo bolo,String combustivel){
     if(bolo.getTamanho().equals(combustivel)){
         return "checked";
     }else{
         return "";
     }
 }
 
 public boolean inserir(Bolo bolo){
        try {
            banco.conectar();
            PreparedStatement statement;
            String sql = "insert into bolo values(nextval('bolo_id_seq')"
                    + ",?,?,?,?,?,?,?);";
            statement = banco.con.prepareStatement(sql);
            statement.setString(1, bolo.getCliente());
            statement.setString(2, bolo.getSabor());
            statement.setString(3, bolo.getRecheio());
            statement.setString(4, bolo.getCobertura());
            statement.setString(5, bolo.getComplemento());
            statement.setString(6, bolo.getTamanho());
            statement.setString(7, bolo.getPreco());
            statement.execute();
            banco.desconectar();
            return true;
        } catch (Exception e) {
            
            System.out.printf("Erro ao Inserir os Dados...");
        return false;
        }
    }
    
    
}
