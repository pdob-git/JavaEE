package pl.pdob.sessions;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/deletesession")
public class DeleteSessionController extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().invalidate();
        HttpSession session = request.getSession(false);
        if (session != null)
            session.invalidate();
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
