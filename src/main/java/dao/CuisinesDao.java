package dao;

import models.Cuisine;

import java.util.ArrayList;
import java.util.List;

public class CuisinesDao {
    private List<Cuisine> cuisines = null;

    public CuisinesDao(){
        cuisines = new ArrayList<>();
        cuisines.add(new Cuisine("1", "Italian"));
        cuisines.add(new Cuisine("2", "Indian"));
        cuisines.add(new Cuisine("3", "American"));
    }

    public void addCuisine(Cuisine cuisine){
        cuisines.add(cuisine);
    }

    public List<Cuisine> getCuisines(){
        return cuisines;
    }
}
