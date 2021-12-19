/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.Account;
import dao.Category;
import dao.Chapter;
import dao.Comment;
import dao.DAO;
import dao.Product;
import java.io.IOException;
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
@WebServlet(name = "SingleProductControl", urlPatterns = {"/singleproduct"})
public class SingleProductControl extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
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
//        processRequest(request, response);
        HttpSession session = request.getSession();
        String pid = request.getParameter("pid");
        DAO dao = new DAO();
        Product p = dao.getSingleProduct(pid);
        int id = p.getCateid();
        Category c = dao.getCategory(id);
        List<Product> listT4 = dao.getT4Product();
        List<Product> listT5 = dao.getT5Product();
        List<Product> listT6 = dao.getT6Product();
        List<Category> listC = dao.getAllCategory();
        List<Chapter> listChap = dao.getChapter(Integer.parseInt(pid));
        List<Comment> listCom = dao.getAllCommentByPID(Integer.parseInt(pid));
        request.setAttribute("listCom", listCom);
        request.setAttribute("listC", listC);
        request.setAttribute("p", p);
        request.setAttribute("listT4", listT4);
        request.setAttribute("listT5", listT5);
        request.setAttribute("listT6", listT6);
        request.setAttribute("c", c);
        request.setAttribute("listChap", listChap);
        session.setAttribute("proid", p.getId());
        request.getRequestDispatcher("SingleProduct.jsp").forward(request, response);
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
//        processRequest(request, response);
        HttpSession session = request.getSession();
        String pid = request.getParameter("pid");
        DAO dao = new DAO();
        Product p = dao.getSingleProduct(pid);
        Account a = (Account) session.getAttribute("acc");
        String comment = request.getParameter("comment");
        dao.insertCom(a.getId(), Integer.parseInt(pid), comment);
        int id = p.getCateid();
        Category c = dao.getCategory(id);
        List< Product> listT4 = dao.getT4Product();
        List< Product> listT5 = dao.getT5Product();
        List< Product> listT6 = dao.getT6Product();
        List<Category> listC = dao.getAllCategory();
        List<Comment> listCom = dao.getAllCommentByPID(Integer.parseInt(pid));
        request.setAttribute("listCom", listCom);
        request.setAttribute("listC", listC);
        request.setAttribute("p", p);
        request.setAttribute("listT4", listT4);
        request.setAttribute("listT5", listT5);
        request.setAttribute("listT6", listT6);
        request.setAttribute("c", c);
        session.setAttribute("proid", p.getId());
        
        request.getRequestDispatcher("SingleProduct.jsp").forward(request, response);
//        response.sendRedirect("singleproduc}");
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
