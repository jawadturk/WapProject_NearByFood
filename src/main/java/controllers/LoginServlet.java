package controllers;

import dao.CookiesDao;
import dao.UsersDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UsersDao db = new UsersDao();
        String userName = req.getParameter("txtUserName");
        String password = req.getParameter("txtPassword");
        boolean isValidUser = db.AuthenticateUser(userName, password, db.getUsers());
        if (!isValidUser) {
            PrintWriter out = resp.getWriter();
            out.print("Sorry, no user found!");
        } else {
            req.getSession().setAttribute("userName", req.getParameter("txtUserName"));
            req.getSession().setAttribute("password", req.getParameter("txtPassword"));
            String rememberMe = req.getParameter("txtRememberMe");

            boolean doesCookieExist = CookiesDao.CheckIfCookieExists(req);
            if (rememberMe != null) {
                //checking if cookie does exist, if not, adding one
                if (!doesCookieExist) {
                    CookiesDao.CreateCookie(resp, "userName", req.getParameter("txtUserName"), 2629744);
                }
            } else {
                if (doesCookieExist) {
                    CookiesDao.CreateCookie(resp, "userName", req.getParameter("txtUserName"), 0);
                }
            }
            resp.sendRedirect("RestaurantDetail.jsp");
        }
    }
}
