import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**RecipeListcontroller, controls all recipe lists no specified ingredients.
 *
 * @author mitchelldoruff
 */
public class RecipeListController extends HttpServlet {
    /**Service gets called when the recipes button is selected.  sending all recipes
     * back.
    * @param req: request information
    * @param res: response from program
    */
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
                
                
		PrintWriter out = res.getWriter();
                
		Model m = new Model();
		try {
			Boolean test = m.getRecipes( out);
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