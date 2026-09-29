package controller;

import dao.UserDAO;
import model.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");


        User user = new User(name, email, password);


        UserDAO userDao = new UserDAO();
        boolean isRegistered = userDao.registerUser(user);

        if (isRegistered) {

            response.sendRedirect("login.jsp");
        } else {

            response.sendRedirect("signup.jsp?error=1");
        }
    }
}
