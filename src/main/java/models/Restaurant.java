package models;

import com.fasterxml.jackson.annotation.JsonProperty;
import dao.CitiesDao;

import java.util.ArrayList;
import java.util.List;

public class Restaurant {
    private String cityId;
    private String name;
    private String id;
    private String phoneNo;
    private Boolean isDisabled;
    private String address;
    @JsonProperty("reviews")
    private List<Review> reviews;
    @JsonProperty("cuisines")
    private List<Cuisine> cuisines;

    public String getThumbnailImage() {
        return thumbnailImage;
    }

    public void setThumbnailImage(String thumbnailImage) {
        this.thumbnailImage = thumbnailImage;
    }

    private String thumbnailImage;

    public List<Cuisine> getCuisines() {
        return cuisines;
    }

    public Restaurant(String cityId, String name, String id, String phoneNo, Boolean isDisabled, String address , String image) {
        this.cityId = cityId;
        this.name = name;
        this.id = id;
        this.phoneNo = phoneNo;
        this.isDisabled = isDisabled;
        this.address = address;
        reviews = new ArrayList<>();
        cuisines = new ArrayList<>();
        this.thumbnailImage=image;
    }

    public String getCityName() {
        for (City city: new CitiesDao().getCities())
            if (city.getId().equals(cityId))
                return city.getName();
        return "Unknown City Name";
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
