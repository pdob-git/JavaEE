package pl.pdob.params;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;

@WebServlet("/browser")
public class BrowserCheckController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        printUserAgent(req);
        System.out.println("--------------");
        printAllHeaders(req);


    }

    private void printAllHeaders(HttpServletRequest req) {
        System.out.println("Wszystkie Nagłówki:");
        Enumeration<String> headerNames = req.getHeaderNames();
        Collections.list(headerNames).stream()
                .map(name -> name + ": " + req.getHeader(name))
                .forEach(System.out::println);
    }

    private void printUserAgent(HttpServletRequest req) {
        String userAgent = req.getHeader("user-agent");
        System.out.println("Browser: " + userAgent);
    }


}
