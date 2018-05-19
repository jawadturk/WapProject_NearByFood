package models;

import java.util.ArrayList;
import java.util.List;

public class Restaurant {
    private String cityId;
    private String name;
    private String id;
    private String phoneNo;
    private Boolean isDisabled;
    private String address;
    private List<Review> reviews;
    private List<Cuisine> cuisines;

    public Restaurant(String cityId, String name, String id, String phoneNo, Boolean isDisabled, String address) {
        this.cityId = cityId;
        this.name = name;
        this.id = id;
        this.phoneNo = phoneNo;
        this.isDisabled = isDisabled;
        this.address = address;
        reviews = new ArrayList<>();
        cuisines = new ArrayList<>();
    }

    public void addCuisines(Cuisine cuisine){
        cuisines.add(cuisine);
    }

    public void addReview(Review review){
        reviews.add(review);
    }

    public String getCityId() {
        return cityId;
    }

    public void setCityId(String cityId) {
        this.cityId = cityId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public Boolean getDisabled() {
        return isDisabled;
    }

    public void setDisabled(Boolean disabled) {
        isDisabled = disabled;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}