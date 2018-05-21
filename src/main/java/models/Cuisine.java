package models;

import java.io.Serializable;
import java.util.Objects;

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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Cuisine)) return false;
        Cuisine cuisine = (Cuisine) o;
        return Objects.equals(getId(), cuisine.getId());
    }

    @Override
    public int hashCode() {

        return Objects.hash(getId(), getName());
    }
}
