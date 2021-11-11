import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author mitchelldoruff
 */
public class IngredientMatchController extends HttpServlet{
    public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
    		PrintWriter out = res.getWriter();
                String ingr = req.getParameter("Ingredients");
                ingr = ingr.toLowerCase();
                String[] ing = ingr.split(",");
                List<String> ingredients = new ArrayList<String>();
                for (int i = 0; i< ing.length; i++) {
                    ingredients.add(ing[i]);
                }
                Collections.sort(ingredients);
		Model m = new Model();
		try {
			Boolean test = m.getMatches( out, ingredients);
			if (test) {
				return;
			} else {
				out.println("Recipe Print unsuccessful");
			}
		} catch (SQLException e1) {
                        System.out.println("SQL exception one");
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (ClassNotFoundException e) {
                        System.out.println("Class not found");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
                
	}
}
