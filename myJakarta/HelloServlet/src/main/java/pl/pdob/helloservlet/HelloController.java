package pl.pdob.helloservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

//@WebServlet("/hello")
public class HelloController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        System.out.println("Hello Servet");

//        resp.setContentType("text/html");
//        PrintWriter out = resp.getWriter();
//
//        out.println("<html>");
//        out.println("<head><title>Hello, Cruel World!</title></head>");
//        out.println("<body>");
//        out.println("<h1>Hello, Cruel World !</h1>");
//        out.println("This is my first servlet.");
//        out.println("</body>");

        System.out.println("Hello Servlet");

    }


}
