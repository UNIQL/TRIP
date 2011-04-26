/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package trip.servlets;

import Help.JDBCHolder;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author andrewfabian
 */
public class registrationServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registrationServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet registrationServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.getRequestDispatcher("/registration.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        Connection conn = null;
        try {
            conn = JDBCHolder.connectToDatabase();

            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String name = request.getParameter("name");
            String email = request.getParameter("email");

            request.setAttribute("uname", username);
            request.setAttribute("pwd", password);
            request.setAttribute("name", name);
            request.setAttribute("mail", email);

            String q = "INSERT INTO Person(username, pwd, name, mail) VALUES(?,?,?,?)";

            PreparedStatement p = conn.prepareStatement(q);

            p.setString(1, username);
            p.setString(2, password);
            p.setString(3, name);
            p.setString(4, email);

            p.executeUpdate();
            request.setAttribute("success", "Sikeres volt!");
        }

        catch (SQLException ex) {
            Logger.getLogger(registrationServlet.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(registrationServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }

        request.getRequestDispatcher("/registration.jsp").forward(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
