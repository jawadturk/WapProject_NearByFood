package models;

public class Cuisine {
    public String id;
    public String name;
    public String restaurantId;

    public Cuisine(String id, String name, String restaurantId) {
        this.id = id;
        this.name = name;
        this.restaurantId = restaurantId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRestaurantId() {
        return restaurantId;
    }

    public void setRestaurantId(String restaurantId) {
        this.restaurantId = restaurantId;
    }
}
