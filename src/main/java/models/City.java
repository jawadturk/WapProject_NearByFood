package models;

import java.util.ArrayList;
import java.util.List;

public class City {

    private String id;

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

    private String name;

    public City(String name, String id) {
        this.name = name;
        this.id = id;

    }




}
