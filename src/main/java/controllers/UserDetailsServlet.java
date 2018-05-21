package controllers;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.ObjectMapper;
import dao.UsersDao;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class UserDetailsServlet extends HttpServlet {

    ObjectMapper mapper = new ObjectMapper();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        UsersDao allUsers = new UsersDao();
        List<User> users = allUsers.getUsers();
        User toReturn = null;
        for(User user : users){
            if(user.getUserId().equalsIgnoreCase(req.getParameter("userId"))){
                toReturn = user;
                break;
            }
        }

        //Writing the response for a restaurant using Jackson API!!
        PrintWriter out = response.getWriter();
        try{
            if(toReturn != null){
                out.print( mapper.writeValueAsString(toReturn));
            }
            else {
                out.print(mapper.writeValueAsString("NoUserFound"));
            }
        }catch (JsonGenerationException e) {
            System.out.print(e.getMessage());
            e.printStackTrace();
        }
        catch (Exception e) {
            System.out.print(e.getMessage());
            e.printStackTrace();
        }
    }
}
