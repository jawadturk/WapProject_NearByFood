package dao;

import models.Cuisine;

import java.util.ArrayList;
import java.util.List;

public class CuisinesDao {
    private static CuisinesDao instance;
    private List<Cuisine> cuisines = null;
    public static CuisinesDao getInstance(){
        if(instance == null){
            instance = new CuisinesDao();
        }
        return instance;
    }
    public CuisinesDao(){
        cuisines = new ArrayList<>();
        cuisines.add(new Cuisine("1", "Italian"));
        cuisines.add(new Cuisine("2", "Indian"));
        cuisines.add(new Cuisine("3", "American"));
        cuisines.add(new Cuisine("4", "Chinese"));
        cuisines.add(new Cuisine("5", "Japanese"));
        cuisines.add(new Cuisine("6", "Fast Food"));
    }

    public void addCuisine(Cuisine cuisine){
        cuisines.add(cuisine);
    }

    public List<Cuisine> getCuisines(){
        return cuisines;
    }
}
