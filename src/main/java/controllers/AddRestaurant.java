package controllers;

import dao.RestaurantsDao;
import models.Restaurant;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Random;
import java.util.UUID;

public class AddRestaurant extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String cityId = req.getParameter("cityId");
        String resName = req.getParameter("resName");
        String resAddress = req.getParameter("resAddress");
        String resPhone = req.getParameter("resPhone");
        String id = UUID.randomUUID().toString();
        Restaurant restaurant = new Restaurant(cityId, resName, id,
                resPhone, true, resAddress, "image");
        new RestaurantsDao().addRestaurant(restaurant);
    }
}
