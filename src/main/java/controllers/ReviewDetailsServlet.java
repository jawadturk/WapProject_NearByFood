package controllers;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.ObjectMapper;
import dao.RestaurantsDao;
import models.Restaurant;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

//@WebServlet(name = "ReviewDetailsServlet")
public class ReviewDetailsServlet extends HttpServlet {

    ObjectMapper mapper = new ObjectMapper();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RestaurantsDao restaurantsDao = new RestaurantsDao();
        String resDetailId = request.getParameter("resPara");
        Restaurant restaurant = null;

        //Searching for the required Restaurant Obj
        List<Restaurant> restaurants = restaurantsDao.getRestaurants();
        for (Restaurant res : restaurants) {
            if (res.getId().equalsIgnoreCase(resDetailId)) {
                restaurant = res;
                break;
            }
        }

        //Writing the response for a restaurant using Jackson API!!
        PrintWriter out =response.getWriter();
        try{
            if(restaurant != null){
                out.print(mapper.writeValueAsString(restaurant));
            }
            else {
                out.print(mapper.writeValueAsString("NoRestaurantFound"));
            }
        }catch (JsonGenerationException e) {
            System.out.print(e.getMessage());
            e.printStackTrace();
        }
        catch (Exception e) {
            System.out.print(e.getMessage());
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
