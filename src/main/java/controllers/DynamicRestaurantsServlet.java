/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import com.fasterxml.jackson.databind.ObjectMapper;
import dao.RestaurantsDao;
import models.Cuisine;
import models.Restaurant;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;


public class DynamicRestaurantsServlet extends HttpServlet {

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
        ObjectMapper mapper = new ObjectMapper();

        //get session
        HttpSession session = request.getSession();

        String cuisineTypeId=request.getParameter("cuisineType");
        String cityId=request.getParameter("cities");

       System.out.println("Cuisine Type Id"+cuisineTypeId);
       System.out.println("City Id"+cityId);

        List<Restaurant> restaurants = new ArrayList<>();

       for (Restaurant restaurant:RestaurantsDao.getInstance().getRestaurants())
       {

           if (cityId.isEmpty()&&!cuisineTypeId.isEmpty())
           {
               if ( restaurant.getCuisines().contains(new Cuisine(cuisineTypeId,"")))
               {
                   restaurants.add(restaurant);
               }

           }else if (cuisineTypeId.isEmpty()&&!cityId.isEmpty())
           {
               if (restaurant.getCityId().equals(cityId))
               {
                   restaurants.add(restaurant);
               }
           }else
           if (restaurant.getCityId().equals(cityId)&& restaurant.getCuisines().contains(new Cuisine(cuisineTypeId,"")))
           {
               restaurants.add(restaurant);
           }
       }
        PrintWriter out =response.getWriter();
        out.print(mapper.writeValueAsString(restaurants));

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
