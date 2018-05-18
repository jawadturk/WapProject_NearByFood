package models;

import java.util.ArrayList;
import java.util.List;

public class City {

    private String id;
    private String name;

    public List<Restaurant> getRestaurants() {
        return restaurants;
    }

    private List<Restaurant> restaurants;

    public City(String name, String id) {
        this.name = name;
        this.id = id;
        restaurants = new ArrayList<>();
    }

    public void addRestaurant(Restaurant res){
        restaurants.add(res);
    }

    public String getName() {
        return name;
    }

    public String getID() {
        return id;
    }

}
