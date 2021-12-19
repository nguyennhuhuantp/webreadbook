/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.Account;
import dao.Category;
import dao.DAO;
import dao.Product;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ManagerProductControl", urlPatterns = {"/managerProduct"})
public class ManagerProductControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("acc");
        DAO dao = new DAO();
        int count = 1;
        int endPage = 1;
        List<Product> listAllP = new ArrayList<>();
        if (a.getIsAdmin() == 1) {
            count = dao.countProduct();
            endPage = count / 8;
            if (count % 8 != 0) {
                endPage++;
            }
            listAllP = dao.paging8Product(index);
        } else {
            count = dao.countProductByAcc(a.getId()+"");
            endPage = count/8;
            if(count % 8 != 0){
                endPage++;
            }
            listAllP = dao.paging8ProductByAcc(index, a.getId());
        }
        List<Category> listC = dao.getAllCategory();
        session.setAttribute("in", index);
        session.setAttribute("endpage", endPage);

        request.setAttribute("listAllP", listAllP);
        request.setAttribute("end", endPage);
        request.setAttribute("tag", index);
        request.setAttribute("count", count);
        request.setAttribute("listC", listC);
        request.getRequestDispatcher("ManagerProduct.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
