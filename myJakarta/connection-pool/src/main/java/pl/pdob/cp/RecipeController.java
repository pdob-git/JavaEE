package pl.pdob.cp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("")
public class RecipeController extends HttpServlet {
    private final RecipeDao recipeDao = new RecipeDao();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Recipe> allRecipes = recipeDao.findAll();
        request.setAttribute("recipes", allRecipes);
        request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
    }
}
