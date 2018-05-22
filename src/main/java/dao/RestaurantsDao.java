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

        Restaurant restaurant2 = new Restaurant("4", "Beaver’s", "2", "(713) 714-4111",
                false, "GALLERIA\n" +
                "6025 Westheimer Rd, Houston, TX 77057", "g7.jpg");
        restaurant2.addCuisines(new Cuisine("3", ""));
        restaurant2.addCuisines(new Cuisine("6", ""));
       restaurants.add(restaurant2);

        Restaurant restaurant3 = new Restaurant("4", "Benjy's", "3", "(713) 522-7602",
                false, "RICE VILLAGE\n" +
                "2424 Dunstan Rd, Houston, TX 77005", "g8.jpg");
        restaurant3.addCuisines(new Cuisine("3", "American"));
        restaurant3.addCuisines(new Cuisine("6", "Fast Food"));
        restaurant3.addReview(new Review("5","3", "Spent good time there!", "2018-05-14", 1));
        restaurant3.addReview(new Review("6","3", "It was okay!", "2018-05-13", 2));
        restaurants.add(restaurant3);

        Restaurant restaurant4 = new Restaurant("1", "Parachute", "4", "(773) 271-4710",
                false, "RAVENSWOOD\n" +
                "4710 N Ravenswood Ave, Chicago, IL 60640\n" , "g5.jpg");
        restaurant4.addCuisines(new Cuisine("1", "Italian"));
        restaurant4.addCuisines(new Cuisine("3", "American"));
       restaurants.add(restaurant4);


        Restaurant restaurant5 = new Restaurant("6", "Outerlands", "5", "(415) 661-6140",
                false, "OUTER SUNSET\n" +
                "4001 Judah St, San Francisco, CA 94122" , "outerlands.jpg");

        restaurant5.addCuisines(new Cuisine("3", "American"));
        restaurants.add(restaurant5);

        Restaurant restaurant14 = new Restaurant("1", "Parachute", "4", "(773) 271-4710",
                false, "RAVENSWOOD\n" +
                "4710 N Ravenswood Ave, Chicago, IL 60640\n" , "g6.jpg");
        restaurant14.addCuisines(new Cuisine("1", "Italian"));
        restaurant14.addCuisines(new Cuisine("2", "Indian"));
        restaurant14.addCuisines(new Cuisine("3", "American"));
        restaurants.add(restaurant14);

        Restaurant restaurant10 = new Restaurant("3", "Paradiso", "5", "(773) 271-4710",
                false, "Main Fairfield Square, Iowa" , "para.jpeg");
        restaurant10.addCuisines(new Cuisine("3", "American"));
        restaurants.add(restaurant10);

        Restaurant restaurant11 = new Restaurant("3", "Indian Cafe", "6", "(773) 271-4710",
                false, "Main Fairfield Square, Iowa" , "ls.jpg");
        restaurant11.addCuisines(new Cuisine("2", "Indian"));
        restaurants.add(restaurant11);

        Restaurant restaurant12 = new Restaurant("3", "Imperial Buffet", "7", "(773) 271-4710",
                false, "Main Fairfield Square, Iowa" , "imperial.jpg");
        restaurant12.addCuisines(new Cuisine("1", "Italian"));
        restaurants.add(restaurant12);

        Restaurant restaurant13 = new Restaurant("3", "Pizza Ranch", "8", "(773) 271-4710",
                false, "Main Fairfield Square, Iowa" , "pizzaranch.jpg");
        restaurant13.addCuisines(new Cuisine("3", "American"));
        restaurants.add(restaurant13);
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
