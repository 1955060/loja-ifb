/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package codigos;

import java.sql.*;
import java.util.ArrayList;

/**
 * Classe Filme
 * @author Edilberto
 */
public class Filme {
    private String titulo;
    private String genero;
    private String pais;
    private String gravadora;
    private String tipo;
    private String midia;
    private String duracao;
    private int ano;
    private int cod;
    private float preco;
    Banco banco = new Banco();
    
    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getMidia() {
        return midia;
    }

    public void setMidia(String midia) {
        this.midia = midia;
    }

    
    public String getDuracao() {
        return duracao;
    }

    public void setDuracao(String duracao) {
        this.duracao = duracao;
    }
    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }
    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }


    /**
     * javadoc para get pais 
     * @return
     */
    public String getPais() {
        return pais;
    }

    /**
     * javadoc para set pais
     * @param pais
     */
    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getGravadora() {
        return gravadora;
    }

    public void setGravadora(String gravadora) {
        this.gravadora = gravadora;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public boolean inserir(Filme filme){
        try {
            banco.conectar();
            PreparedStatement statement;
            String sql = "insert into filmes values(nextval('filmes_cod_seq')"
                    +",?,?,?,?,?,?,?,?,?);";
            statement = banco.con.prepareStatement(sql);
            statement.setString(1, filme.getTitulo());
            statement.setString(2, filme.getGenero());
            statement.setInt(5, filme.getAno());
            statement.setString(3, filme.getMidia());
            statement.setString(6, filme.getDuracao());
            statement.setString(7, filme.getPais());
            statement.setString(8, filme.getTipo());
            statement.setString(4, filme.getGravadora());
            statement.setFloat(9, filme.getPreco());
            statement.execute();
            banco.desconectar();
            return true;            
        } catch (Exception e) {
               System.out.print("erro ao inserir!");
               e.printStackTrace();
                return false;
        }
    }
    
    
    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    } 
    
    public String selecionado(Filme filme, String genero){
        if(filme.getGenero().equals(genero)){
            return "selected";
        } else{
            return "";
        }
    }
 
    public String marcado(Filme filme, String midia){
        if(filme.getMidia().equals(midia)){
            return "checked";
        } else{
            return "";
        }
    }
    
    public Filme preEditar(int cod) {
        Filme filme = new Filme();
        try {
            banco.conectar();
            PreparedStatement statement;
            String sql = "select * from filmes where cod=?;";
            statement = banco.con.prepareStatement(sql);
            statement.setInt(1, cod);
            ResultSet rs = statement.executeQuery();
            if(rs.next()){
                filme.setAno(rs.getInt("ano"));
                filme.setMidia(rs.getString("midia"));
                filme.setGenero(rs.getString("genero"));
                filme.setPais(rs.getString("pais"));
                filme.setTitulo(rs.getString("titulo"));
                filme.setGravadora(rs.getString("gravadora"));
                filme.setCod(rs.getInt("cod"));
                filme.setTipo(rs.getString("tipo"));
                filme.setDuracao(rs.getString("duracao"));
                filme.setPreco(rs.getFloat("preco"));
            }
            banco.desconectar();
        } catch (Exception e) {
              System.out.print("erro ao consultar!");
               e.printStackTrace();
        }
        return  filme;
    }

    public boolean alterar(Filme filme){
        try {
            banco.conectar();
            PreparedStatement argumento;
            String sql = "update filmes set pais=?, gravadora=?, tipo=?, ano=?,"
                    + "titulo=?, genero=?,midia=?,duracao=?,preco=? where cod=?;";
            argumento = banco.con.prepareStatement(sql);
            argumento.setString(1, filme.getPais());
            argumento.setString(2, filme.getGravadora());
            argumento.setString(3, filme.getTipo());
            argumento.setInt(4, filme.getAno());
            argumento.setString(5, filme.getTitulo());
            argumento.setString(6, filme.getGenero());
            argumento.setString(7, filme.getMidia());
            argumento.setString(8, filme.getDuracao());
            argumento.setFloat(9, filme.getPreco());
            argumento.setInt(10, filme.getCod());
            argumento.execute();
            banco.desconectar();
            return true;            
        } catch (Exception e) {
            
               System.out.print("erro ao alterar!");
               e.printStackTrace();

            return false;
        }
    }
    public boolean excluir(Filme filme){
        try {
            banco.conectar();
            PreparedStatement argumento;
            String sql = "delete from filmes where cod=?;";
            argumento = banco.con.prepareStatement(sql);
            argumento.setInt(1, filme.getCod());
            argumento.execute();
            banco.desconectar();
            return true;            
        } catch (Exception e) {
            System.out.print("erro ao excluir!");
            e.printStackTrace();
            return false;
        }
    }
    
    public ArrayList<Filme> consultar(){
        ArrayList<Filme> listaFilme = new ArrayList<Filme>();
        try {
            banco.conectar();
            PreparedStatement statement;
            String sql = "select * from filmes;";
            statement = banco.con.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while(rs.next()){
                Filme filme = new Filme();
                filme.setAno(rs.getInt("ano"));
                filme.setMidia(rs.getString("midia"));
                filme.setGenero(rs.getString("genero"));
                filme.setPais(rs.getString("pais"));
                filme.setTipo(rs.getString("tipo"));
                filme.setGravadora(rs.getString("gravadora"));
                filme.setCod(rs.getInt("cod"));
                filme.setTitulo(rs.getString("titulo"));
                filme.setDuracao(rs.getString("duracao"));
                filme.setPreco(rs.getFloat("preco"));
                listaFilme.add(filme);
            }
                 
            banco.desconectar();
            return listaFilme;            
        } catch (Exception e) {
              System.out.print("erro ao consultar!");
               e.printStackTrace();
        }
        return listaFilme;
    }
    
   
}
