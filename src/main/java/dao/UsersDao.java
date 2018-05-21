package dao;

import models.User;

import java.util.ArrayList;
import java.util.List;

public class UsersDao {

    private List<User> users = null;

    public UsersDao() {
        users = new ArrayList<>();
        users.add(new User("1", "John Doe", "john@example.com", "123"));
        users.add(new User("2", "Aimal", "aimal@example.com", "123"));
        users.add(new User("3", "Baky", "baky@example.com", "123"));
        users.add(new User("4", "Jawad", "jawad@example.com", "123"));
    }

    public void addUser(User user){
        users.add(user);
    }

    public List<User> getUsers(){
        return users;
    }

    public boolean AuthenticateUser(String userName, String password, List<User> usersList){
        for(User user : usersList){
            if(user.getName().equalsIgnoreCase(userName) && user.getPassword().equals(password)){
                return true;
            }
        }
        return false;
    }
}
