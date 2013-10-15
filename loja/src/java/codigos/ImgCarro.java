/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package codigos;

import com.sun.istack.logging.Logger;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author luiz.maia
 */
@WebServlet(urlPatterns="/carro/recebeImagem")
public class ImgCarro extends HttpServlet{
    Carro carro = new Carro();
    private static Logger logger = Logger.getLogger(ImgCarro.class);
    
    @Override
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
        Part part = request.getPart("uploadFile");
        if(request.getParameter("acao").equals("Ok")){
        
        logger.info("Nome do arquivo " + part.getName());
        InputStream is = request.getPart(part.getName()).getInputStream();
        int i = is.available();
        byte[] b = new byte[i];
        is.read(b);
        logger.info("Tamanho do arquivo : " + b.length+"bytes");
        String nomeArquivo = getFileName(part,request.getParameter("id"));
        //diretorio do projeto
        String dirName = request.getServletContext().getRealPath("../../web/carro/img/");
        // mapeando onde o arquio será gravado
        FileOutputStream os = new FileOutputStream(dirName+"/"+ nomeArquivo);
        carro.alterarImg(nomeArquivo, Integer.parseInt(request.getParameter("id")));
        os.write(b);
        is.close();
        os.close();
        response.sendRedirect("gerenciarImg.jsp?id="+request.getParameter("id"));
        }
        if(request.getParameter("acao").equals("Excluir")){
            String dirName = request.getServletContext().getRealPath("../../web/carro/img/");
            carro = carro.preEditar(Integer.parseInt(request.getParameter("id")));
            File arquivo = new File(dirName + "/"+carro.getImg());
            Files.delete(arquivo.toPath());
            carro.alterarImg("", Integer.parseInt(request.getParameter("id")));
            response.sendRedirect("gerenciarImg.jsp?id=2");
        }
    }
        private String getFileName(Part part,String novoNome) {
        String partHeader = part.getHeader("content-disposition");
        logger.info("Part Header = " + partHeader);
        for (String cd : part.getHeader("content-disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                String nome  = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
                String ext = nome.substring(nome.indexOf('.'));
                return novoNome+ ext;
            }
        }
        return null;

    }
}
