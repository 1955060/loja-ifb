/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package codigos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Celular {

    private String Marca;
    private String ResoluçaoDaCamera;
    private String TamanhoDaTela;
    private String SistemaOperacional;
    private String TouchScreen;
    private int id;
    Banco banco = new Banco();

    /**
     * public String getProprietario() { //get serve pra obter o objeto, então
     * dentro de proprietario ele puxará o nome do proprietario return
     * proprietario; //o return serve pra ir até o proprietario
     *
     */
    public String getMarca() {
        return Marca;
    }

    public void setMarca(String Marca) {
        this.Marca = Marca;
    }

    public String getResoluçaoDaCamera() {
        return ResoluçaoDaCamera;
    }

    public void setResoluçaoDaCamera(String Resoluçãodacâmera) {
        this.ResoluçaoDaCamera = Resoluçãodacâmera;
    }

    public String getTamanhoDaTela() {
        return TamanhoDaTela;
    }

    public void setTamanhoDaTela(String Tamanhodatela) {
        this.TamanhoDaTela = Tamanhodatela;
    }

    public String getSistemaOperacional() {
        return SistemaOperacional;
    }

    public void setSistemaOperacional(String SistemaOperacional) {
        this.SistemaOperacional = SistemaOperacional;
    }

    public String getTouchScreen() {
        return TouchScreen;
    }

    public void setTouchScreen(String TouchScreen) {
        this.TouchScreen = TouchScreen;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String checked(Celular celular, String TouchScreen) {
        if (celular.getTouchScreen().equals(TouchScreen)) {
            return "checked";
        } else {
            return "";
        }
    }
    
    public ArrayList<Celular> consultar() {
        ArrayList<Celular> listaCelular = new ArrayList<Celular>();
        try {
            banco.conectar();
            PreparedStatement statement;
            String sql = "select *from carro order by (id);";
            statement = banco.con.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Celular celular = new Celular();
                celular.setMarca(rs.getString("Marca"));
                celular.setTouchScreen(rs.getString("SistemaOperacional"));
                celular.setResoluçaoDaCamera(rs.getString("ResoluçaoDaCamera"));
                celular.setTamanhoDaTela(rs.getString("TamanhoDaTela"));
                celular.setSistemaOperacional(rs.getString("TouchScreen"));
                celular.setId(rs.getInt("id"));
                listaCelular.add(celular);
            }
            banco.desconectar();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaCelular;
    }
    
    public Celular preEditar(int id) {
        Celular celular = new Celular();
        try {
            banco.conectar();
            String sql = "select *from carro where id=?;";
            PreparedStatement statement = banco.con.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                celular.setMarca(rs.getString("ano"));
                celular.setTouchScreen(rs.getString("SistemaOperacional"));
                celular.setResoluçaoDaCamera(rs.getString("ResoluçaoDaCamera"));
                celular.setTamanhoDaTela(rs.getString("TamanhoDaTela"));
                celular.setSistemaOperacional(rs.getString("TouchScreen"));
                celular.setId(rs.getInt("id"));
            }
            banco.desconectar();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return celular;
    }

    public boolean inserir(Celular celular) {
        try {
            banco.conectar();
            PreparedStatement statement;
            /*Prepara os códigos*/
            String sql = "insert into celular values(nextval('celular_id_seq')"
                    + ",?,?,?,?,?,?);";
            statement = banco.con.prepareStatement(sql);
            statement.setString(1, celular.getMarca());
            statement.setString(2, celular.getSistemaOperacional());
            statement.setString(3, celular.getResoluçaoDaCamera());
            statement.setString(4, celular.getTamanhoDaTela());
            statement.setString(5, celular.getTouchScreen());

            statement.execute();
            banco.desconectar();
            return true;

        } catch (Exception e) {
            e.printStackTrace();
            System.out.print("Erro na conexão");
            return false;
        }
    }
    
    public boolean alterar(Celular celular) {

        try {
            banco.conectar();
            PreparedStatement argumento;
            String sql = "UPDATE celular SET marca=?, so=?, resolucao=?, "
                    + "tamanho=?, cor=?, touch=? WHERE id=?";
            argumento = banco.con.prepareStatement(sql);
            //set é colocar e get é pegar
            argumento.setString(1, celular.getMarca());
            argumento.setString(2, celular.getSistemaOperacional());
            argumento.setString(3, celular.getResoluçaoDaCamera());
            argumento.setString(4, celular.getTamanhoDaTela());
            argumento.setString(5, celular.getTouchScreen());
            argumento.setInt(7, celular.getId());
            //Statement = argumento
            argumento.execute();
            banco.desconectar();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
            
    public boolean excluir(int id) {

        try {
            banco.conectar();
            PreparedStatement argumento;
            String sql = "DELETE FROM celular WHERE ID=? ";
            argumento = banco.con.prepareStatement(sql);
            //set é colocar e get é pegar
            argumento.setInt(1, id);
            //Statement = argumento
            argumento.execute();
            banco.desconectar();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }


}
