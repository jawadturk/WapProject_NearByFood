package dao;

import models.City;

import java.util.ArrayList;
import java.util.List;

public class CitiesDao {

    private static CitiesDao instance;
    private List<City> cities = null;
    public static CitiesDao getInstance(){
        if(instance == null){
            instance = new CitiesDao();
        }
        return instance;
    }



    public CitiesDao(){
        cities = new ArrayList<>();
        cities.add(new City("Chicago", "1"));
        cities.add(new City("Newyork", "2"));
        cities.add(new City("Fairfield", "3"));
    }

    public List<City> getCities(){
        return cities;
    }

    public void addCity(City city){
        cities.add(city);
    }
}
