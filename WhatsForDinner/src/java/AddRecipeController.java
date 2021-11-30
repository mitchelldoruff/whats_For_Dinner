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

/** AddRecipeController takes info given by user and enters a new recipe in the DB
 *
 * @author mitchelldoruff
 */
public class AddRecipeController extends HttpServlet{
    /**Service gets called when the add Recipe button is selected, and inserts
    * the given info into the connected DB
    * @param req: request information
    * @param res: response from program
    */
    public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
                //Create a print writer to print the html updates with the results
    		PrintWriter out = res.getWriter();
                //get recipe name
                String recipeName = req.getParameter("recipeName");
                //Get all ingredients, max is 15 so use a list with max length 15
                int i = 1;
                String[] ingredients = new String[15];
                while (req.getParameter("ing" + i) != null) {
                    ingredients[i-1]= req.getParameter("ing" + i);
                    i++;
                }
                //Get all instructions, max is 15 so use a list with max length 15
                i = 1;
                String[] instructions = new String[15];
                while (req.getParameter("inst" + i) != null) {
                    instructions[i-1]= req.getParameter("inst" + i);
                    i++;
                }
                //Create a model object
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
