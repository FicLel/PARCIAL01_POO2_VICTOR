/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.sv.udb.vista;

import com.sv.udb.controlador.AlumnosCtrl;
import com.sv.udb.modelo.Alumnos;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Casa
 */
@WebServlet(name = "AlumnosServ", urlPatterns = {"/AlumnosServ"})
public class AlumnosServ extends HttpServlet {

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
            boolean esValido = request.getMethod().equals("POST");
            if(esValido)
            {
                String mens = "";
                String CRUD = request.getParameter("accionBtn");
                if(CRUD.equals("Guardar"))
                {
                    Alumnos obje = new Alumnos();
                    obje.setNombAlum(request.getParameter("nombre"));
                    obje.setApelAlum(request.getParameter("apellido"));
                    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                    Date fechaNacimiento;
                    try
                    {
                       fechaNacimiento= formatter.parse(request.getParameter("fechaNacimiento"));
                    }
                    catch(Exception err)
                    {
                        fechaNacimiento=new Date();
                    }
                            
                   
                    obje.setFechNaciAlum(fechaNacimiento);
                    obje.setMailAlum(request.getParameter("correo"));
                    obje.setTeleAlum(request.getParameter("telefono"));
                    obje.setDireAlum(request.getParameter("direccion"));
                    obje.setGeneAlum((request.getParameter("genero")).charAt(0));
                    
                    mens = new AlumnosCtrl().guar(obje) ? "Datos guardados exitosamente" : "Datos NO guardados";
                }
                request.setAttribute("mensAler", mens);
                request.getRequestDispatcher("/Alumnos.jsp").forward(request, response);
            }
            else
            {
                response.sendRedirect(request.getContextPath() + "/Alumnos.jsp");
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
