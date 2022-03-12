/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package filter;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import model.Account;

/**
 *
 * @author Administrator
 */
@WebFilter(filterName = "AuthoFilter", urlPatterns = {"/admin/*"})
public class AuthoFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
         HttpServletRequest req = (HttpServletRequest) request;
        HttpServletRequest res = (HttpServletRequest) response;

        // check authentication
        Account account = (Account) req.getSession().getAttribute("account");
        // admin already authenticated
        if (account != null && account.getRole().equals(Account.ADMIN)) {
            //
            chain.doFilter(request, response);
            return;
        }
        req.setAttribute("error", "You do not have permission to access this");
        req.getRequestDispatcher("login.jsp").forward(request, response);
     
    }

 @Override
    public void destroy() {        
    }

     @Override
    public void init(FilterConfig filterConfig) {        
       
    }


    
}
