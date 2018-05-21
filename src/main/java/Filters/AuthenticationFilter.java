package Filters;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class AuthenticationFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest reqServlet = (HttpServletRequest) req;
        HttpServletResponse resServlet = (HttpServletResponse) resp;
        HttpSession session = reqServlet.getSession();
        String userName = (String) reqServlet.getSession().getAttribute("userName");
        if(userName == null){
            chain.doFilter(req, resp);
        }
        else {
            resServlet.sendRedirect("index.jsp");
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
