package models;

import java.io.Serializable;

public class Cuisine implements Serializable {
    public String id;
    public String name;

    public Cuisine(String id, String name) {
        this.id = id;
        this.name = name;
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

    @Override
    public String toString() {
        return "Cuisine [" +
                "id=" + this.id + ", " +
                "name=" + this.name+
                "]";
    }
}
