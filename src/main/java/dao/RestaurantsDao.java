package dao;

import models.Cuisine;
import models.Restaurant;
import models.Review;

import java.util.ArrayList;
import java.util.List;

public class RestaurantsDao {
    private static List<Restaurant> restaurants = null;
    private static RestaurantsDao instance;

    public static RestaurantsDao getInstance(){
        if(instance == null){
            instance = new RestaurantsDao();
        }
        return instance;
    }

    public void init() {
        restaurants = new ArrayList<>();
        Restaurant restaurant1 = new Restaurant("1", "Big Jones", "1", "(773) 275-5725",
                false, "ANDERSONVILLE\n" +
                "5347 N Clark St, Chicago, IL 60640\n" , "g6.jpg");
        restaurant1.addCuisines(new Cuisine("1", "Italian"));
        restaurant1.addCuisines(new Cuisine("2", "Indian"));
        restaurant1.addCuisines(new Cuisine("3", "American"));
        restaurant1.addReview(new Review("1","1", "Spent good time there!", "2018-05-19", 1));
        restaurant1.addReview(new Review("2","1", "It was okay!", "2018-05-18", 2));
        restaurants.add(restaurant1);

        Restaurant restaurant2 = new Restaurant("2", "Example Restaurant 2 Newyork", "2", "123-123-1234",
                false, "Burlington avenue, 123, Newyork", "g6.jpg");
        restaurant2.addCuisines(new Cuisine("2", "Indian"));
        restaurant2.addReview(new Review("3","2", "Spent good time there!", "2018-05-16", 3));
        restaurant2.addReview(new Review("4","2", "It was okay!", "2018-05-15", 4));
        restaurants.add(restaurant2);

        Restaurant restaurant3 = new Restaurant("3", "Example Restaurant 2 Fairfield", "3", "123-123-1234",
                false, "Burlington avenue, 123, Fairfield", "g6.jpg");
        restaurant3.addCuisines(new Cuisine("3", "American"));
        restaurant3.addCuisines(new Cuisine("2", "Indian"));
        restaurant3.addReview(new Review("5","3", "Spent good time there!", "2018-05-14", 1));
        restaurant3.addReview(new Review("6","3", "It was okay!", "2018-05-13", 2));
        restaurants.add(restaurant3);

        Restaurant restaurant4 = new Restaurant("1", "Parachute", "4", "(773) 271-4710",
                false, "RAVENSWOOD\n" +
                "4710 N Ravenswood Ave, Chicago, IL 60640\n" , "g6.jpg");
        restaurant4.addCuisines(new Cuisine("1", "Italian"));
        restaurant4.addCuisines(new Cuisine("2", "Indian"));
        restaurant4.addCuisines(new Cuisine("3", "American"));
       restaurants.add(restaurant4);

        Restaurant restaurant5 = new Restaurant("3", "Paradiso", "5", "(773) 271-4710",
                false, "Main Fairfield Square, Iowa" , "para.jpeg");
        restaurant5.addCuisines(new Cuisine("3", "American"));
        restaurants.add(restaurant5);

        Restaurant restaurant6 = new Restaurant("3", "Indian Cafe", "6", "(773) 271-4710",
                false, "Main Fairfield Square, Iowa" , "ls.jpg");
        restaurant6.addCuisines(new Cuisine("2", "Indian"));
        restaurants.add(restaurant6);

        Restaurant restaurant7 = new Restaurant("3", "Imperial Buffet", "7", "(773) 271-4710",
                false, "Main Fairfield Square, Iowa" , "imperial.jpg");
        restaurant7.addCuisines(new Cuisine("1", "Italian"));
        restaurants.add(restaurant7);

        Restaurant restaurant8 = new Restaurant("3", "Pizza Ranch", "8", "(773) 271-4710",
                false, "Main Fairfield Square, Iowa" , "pizzaranch.jpg");
        restaurant8.addCuisines(new Cuisine("3", "American"));
        restaurants.add(restaurant8);
    }

    public RestaurantsDao() {
        if(!CookiesDao.isInit){
            CookiesDao.isInit = true;
            init();
        }
    }

    public List<Restaurant> getRestaurants(){
        return restaurants;
    }

    public void addRestaurant(Restaurant restaurant) {
        restaurants.add(restaurant);
    }
}
