package pl.pdob.forms.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pl.pdob.forms.model.User;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/userdata")
public class UserDataController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = createUserFromRequest(request);
        sendResponse(user, response);
    }


    private User createUserFromRequest(HttpServletRequest request) {
        User user = new User();
        user.setUsername(request.getParameter("username"));
        user.setPassword(request.getParameter("pass"));
        user.setGender(request.getParameter("gender"));
        user.setHobby(request.getParameterValues("hobby"));

        return user;
    }

    private void sendResponse(User user, HttpServletResponse response) throws IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<body>");
        writer.println("<h1>Dane odebrane od użytkownika</h1>");
        writer.println("<div>");
        writer.println(user.getUsername() + "<br>");
        writer.println(user.getPassword() + "<br>");
        writer.println(user.getGender() + "<br>");
        writer.println("Hobby: <br>");
        for (String hobby : user.getHobby()) {
            writer.println("&nbsp;" + hobby + "<br>");
        }
        writer.println("</div>");
        writer.println("</body>");
        writer.println("</html>");
    }

}
