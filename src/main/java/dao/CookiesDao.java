package dao;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CookiesDao {

    public static boolean isInit = false;
    public static boolean cuisineFlag = false;

    public static boolean CheckIfCookieExists(HttpServletRequest req) throws IOException {
        for (Cookie cookie : req.getCookies()) {
            if (cookie.getName().equals("userName")) {
                return true;
            }
        }
        return false;
    }

    public static String GetCookieValue(HttpServletRequest req) throws IOException {
        for (Cookie cookie : req.getCookies()) {
            if (cookie.getName().equals("userName")) {
                return cookie.getValue();
            }
        }
        return null;
    }

    public static void CreateCookie(HttpServletResponse res, String key, String value, int duration) {
        Cookie cookie = new Cookie(key, value);
        cookie.setMaxAge(duration); //in seconds
        res.addCookie(cookie);
    }
}
