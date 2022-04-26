package pl.pdob.security.logout;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/logout")
public class LogoutController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.logout(); //usunięcie kontekstu bezpieczeństwa, sesja będzie nadal istnieć
//        request.getSession().invalidate(); //usunięcie sesji wraz z powiązanym kontekstem bezpieczeństwa
        response.sendRedirect(request.getContextPath());
    }
}
