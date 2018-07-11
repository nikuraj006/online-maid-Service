/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlate;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import p1.Conn;

/**
 *
 * @author Sushil
 */
public class update extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
                        
              String ids =request.getParameter("email");
              String name=request.getParameter("name").trim();
              String  mobile=request.getParameter("mobile").trim();
              String cate=request.getParameter("cate").trim();
              String  address=request.getParameter("address").trim();
              String  city=request.getParameter("city").trim();
              String  pin=request.getParameter("pin").trim();
              String  dob=request.getParameter("date").trim();
              String  state=request.getParameter("state").trim();
                
               try
                {
                    Connection con = Conn.getCon();
                    PreparedStatement ps = con.prepareStatement("update servants set name = ?,mobile= ?,address=?,city=?,pin=?,state=?,category=? ,dob=? where email=? or mobile=?");
                    
                    ps.setString(1,name);
                    ps.setString(2,mobile);
                    ps.setString(3,address);
                    ps.setString(4,city);
                    ps.setString(5,pin);
                    ps.setString(6,state);
                    ps.setString(7,cate);                    
                    ps.setString(8,dob);
                    ps.setString(9,ids);
                    ps.setString(10,ids);
                     
                int t=ps.executeUpdate();
                response.sendRedirect("home.jsp?cuser=Update successful!!!");
            }
                catch (Exception e)
                        {
                            System.out.println(e);
    }
   
        }
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
