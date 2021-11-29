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
public class AddRecipeController extends HttpServlet{
    public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
    		PrintWriter out = res.getWriter();
                String recipeName = req.getParameter("recipeName");
                
                int i = 1;
                String[] ingredients = new String[15];
                while (req.getParameter("ing" + i) != null) {
                    ingredients[i-1]= req.getParameter("ing" + i);
                    i++;
                }
                
                i = 1;
                String[] instructions = new String[15];
                while (req.getParameter("inst" + i) != null) {
                    instructions[i-1]= req.getParameter("inst" + i);
                    i++;
                }
                
		Model m = new Model();
		try {
			Boolean test = m.addRecipe( out, recipeName, ingredients, instructions);
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
