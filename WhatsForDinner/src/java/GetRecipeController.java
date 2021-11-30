import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**GetRecipe Controller grabs all recipe info for selected recipe
 *
 * @author mitchelldoruff
 */
public class GetRecipeController  extends HttpServlet{
    /**Service gets called when the select recipe button is selected, and feeds
     * the response information for that recipe
    * @param req: request information
    * @param res: response from program
    */
    public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
    		PrintWriter out = res.getWriter();
                String id = req.getParameter("id");
                
		Model m = new Model();
		try {
			Boolean test = m.getInstructions( out, id);
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
