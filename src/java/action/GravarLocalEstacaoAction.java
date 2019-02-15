/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import controller.Action;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.LocalEstacao;
import persistence.LocalEstacaoDAO;

/**
 *
 * @author Anah
 */
public class GravarLocalEstacaoAction implements Action {

    public GravarLocalEstacaoAction() {
    }

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("txtId"));
        String nome = request.getParameter("txtNome");
        String descricao = request.getParameter("txtDesc");
        String latitude = request.getParameter("txtLati");
        float altura = Float.parseFloat(request.getParameter("txtAltu"));
        String longitude = request.getParameter("txtLong");

        if (nome.equals("")) {
            response.sendRedirect("index.jsp");
        } else {
            LocalEstacao local = new LocalEstacao(id, nome, altura, descricao, latitude, longitude);
            try {
                LocalEstacaoDAO.getInstance().save(local);
                response.sendRedirect("FrontController?action=LerLocalEstacao");
            } catch (ClassNotFoundException ex) {
            } catch (SQLException ex) {
                response.sendRedirect("erro.jsp");
            }
        }
    }
}
