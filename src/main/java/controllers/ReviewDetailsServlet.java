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
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "ReviewDetailsServlet")
public class ReviewDetailsServlet extends HttpServlet {

    ObjectMapper mapper = new ObjectMapper();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RestaurantsDao restaurantsDao = new RestaurantsDao();
        //Needs to be uncommented once jawad completes his logic and send a get request to display detail
        //String resDetailId = request.getParameter("resPara");
        String resDetailId = "1";
        Restaurant restaurant = null;

        //Searching for the required Restaurant Obj
        for(Restaurant res : restaurantsDao.getRestaurants()){
            if(res.getId().equalsIgnoreCase(resDetailId)){
                restaurant = res;
                break;
            }
        }

        PrintWriter out =response.getWriter();
        try{
            out.print(mapper.writeValueAsString(restaurant));
        }catch (JsonGenerationException e) {
            e.printStackTrace();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
}
