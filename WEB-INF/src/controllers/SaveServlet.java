package controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;

import models.User;

import com.google.gson.Gson;

@WebServlet("/save.do")
public class SaveServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // String name = request.getParameter("uname");
        // String email = request.getParameter("uemail");
        // String password = request.getParameter("upassw");
        // String userData = request.getParameter("user_data");

        // Gson gson = new Gson();
        // User user = gson.fromJson(userData, User.class);
        // String result = "no";
        // if(new User(name, email, password).saveUser()) {
        //     result = "yes";
        // }

        HttpSession session = request.getSession();


        String address = request.getParameter("address");
        String gender = request.getParameter("gender");
        String city = request.getParameter("city");
        String pincode = request.getParameter("pincode");
        
        
        User user = (User)session.getAttribute("user");

        if(user != null) { 

        user.setAddress(address);
        user.setGender(gender);
        user.setCity(city);
        user.setPincode(pincode);

        String result = "no";
        
        if(user.saveExtraDetails()) {
            System.out.println("om");
            result = "yes";
        }

        System.out.println("OM");
        response.sendRedirect("userProfile.jsp");
            
        } else {

            session.setAttribute("user_session_expire", "Your session is expire. Pleases Login again...");
            response.sendRedirect("userlogin.do");
            
        }
        
    }
}