//Objeto computador
package codigos;

public class Computador {
    
    private String placaM;
    private String memoria;
    private String cpu;
    private String video;
    private String hd;
    private double preco;
    private int id;

    public String getPlacaM() {
        return placaM;
    }

    public String getMemoria() {
        return memoria;
    }

    public String getCpu() {
        return cpu;
    }

    public String getVideo() {
        return video;
    }

    public String getHd() {
        return hd;
    }

    public double getPreco() {
        return preco;
    }
    
    public int getId(){
        return id;
    }

    public void setPlacaM(String placaM) {
        this.placaM = placaM;
    }

    public void setMemoria(String memoria) {
        this.memoria = memoria;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public void setHd(String hd) {
        this.hd = hd;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }
    
    public void setId(int id){
        this.id = id;
    }
    
    
}
