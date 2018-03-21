/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes.com.servlets;

import java.io.IOException;
import java.net.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.PreparedStatement;
 import java.sql.DriverManager;
 import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 6001018
 */
public class AltaServlet extends HttpServlet {

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
        
       try {
            response.setContentType("text/html;charset=UTF-8");
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/empleadosmysql?zeroDateTimeBehavior=convertToNull", "root", "root");
            String insercion = "INSERT INTO empleado(nombre,apellido,telefono,direccion,codProyecto) VALUES (?,?,?,?,?)";

            PreparedStatement s = conexion.prepareStatement(insercion);

            s.setString(1, request.getParameter("nombre"));
            s.setString(2, request.getParameter("apellido"));
            s.setInt(3, Integer.parseInt(request.getParameter("telefono")));
            s.setString(4, request.getParameter("direccion"));
            s.setInt(5,Integer.parseInt(request.getParameter("codProyecto")));
            s.executeUpdate();

            request.setCharacterEncoding("UTF-8");

            conexion.close();
            
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AltaServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(AltaServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("/Alta.jsp").forward(request,response);
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
