package controllers;

import dao.CuisinesDao;
import models.Cuisine;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.UUID;

public class AddCuisine extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cuisineName = req.getParameter("cuisineName");
        Cuisine cuisine = new Cuisine(UUID.randomUUID().toString(), cuisineName);
        new CuisinesDao().addCuisine(cuisine);
    }
}
