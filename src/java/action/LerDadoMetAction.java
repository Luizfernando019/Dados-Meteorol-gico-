/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import controller.Action;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.LocalEstacao;
import persistence.LocalEstacaoDAO;
import persistence.MomentoDAO;

/**
 *
 * @author Anah
 */
public class LerDadoMetAction implements Action {

    public LerDadoMetAction() {
    }

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
         try {
            request.setAttribute("estacoes", LocalEstacaoDAO.obterEstacoes());
            request.setAttribute("momentos", MomentoDAO.obterMomentos());
            RequestDispatcher view = request.getRequestDispatcher("index.jsp");
            view.forward(request, response);
        } catch (ServletException ex) {
            ex.printStackTrace();
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
    }
}
