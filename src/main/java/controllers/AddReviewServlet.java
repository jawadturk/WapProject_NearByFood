package controllers;

import dao.CookiesDao;
import dao.RestaurantsDao;
import dao.UsersDao;
import models.Restaurant;
import models.Review;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class AddReviewServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getSession().setAttribute("restaurantId", request.getParameter("txtRestaurantId"));

        if (request.getSession().getAttribute("userName") == null) {
            if (CookiesDao.CheckIfCookieExists(request)) {
                request.getSession().setAttribute("userNameAutoFill", CookiesDao.GetCookieValue(request));
            }
            response.sendRedirect("loginform.jsp");
        } else {
            UsersDao users = new UsersDao();
            String reviewText = request.getParameter("txtNewReview");
            User user = null;
            for (User us : users.getUsers()) {
                if (us.getName().equalsIgnoreCase(request.getSession().getAttribute("userName").toString())
                        && us.getPassword().equals(request.getSession().getAttribute("password").toString())) {
                    user = us;
                    break;
                }
            }

            RestaurantsDao restaurants = new RestaurantsDao();
            Restaurant restaurant = null;
            int counter = 0;
            for(Restaurant rs : restaurants.getRestaurants()){
                if(rs.getId().equalsIgnoreCase(request.getParameter("txtRestaurantId").toString())){
                    restaurant = rs;
                    restaurants.getRestaurants().remove(rs);
                    break;
                }
                counter++;
            }

            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
            restaurant.addReview(new Review("", request.getParameter("txtRestaurantId"), reviewText, dateFormat.format(new Date()).toString(), Integer.parseInt(user.getUserId())));
            restaurants.getRestaurants().add(counter, restaurant);
            response.sendRedirect("RestaurantDetail.jsp");
        }
    }
}
