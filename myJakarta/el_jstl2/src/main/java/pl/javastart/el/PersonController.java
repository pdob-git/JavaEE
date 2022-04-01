package pl.javastart.el;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/")
public class PersonController extends HttpServlet {
    @Override
    public void init() {
        List<Person> testData = new ArrayList<Person>();
        testData.add(new Person("Anna", "Zarzycka", 26, Gender.FEMALE));
        testData.add(new Person("Marcin", "Prokop", 33, Gender.MALE));
        testData.add(new Person("Piotr", "Zalewski", 17, Gender.MALE));
        testData.add(new Person("Aneta", "Kopacka", 20, Gender.FEMALE));
        getServletContext().setAttribute("people", testData);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        Gender gender = Gender.valueOf(request.getParameter("gender"));
        int age = Integer.parseInt(request.getParameter("age"));
        Person person = new Person(firstName, lastName, age, gender);
        List<Person> peopleList = (List<Person>) getServletContext().getAttribute("people");
        peopleList.add(person);
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }
}
