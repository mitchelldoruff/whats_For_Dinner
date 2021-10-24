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

/**
 *
 * @author mitchelldoruff
 */
public class GetRecipeController  extends HttpServlet{
    public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
    		PrintWriter out = res.getWriter();
                String id = req.getParameter("recipe");
                
		Model m = new Model();
		try {
			Boolean test = m.getInstructions( out, id);
			if (test) {
				out.println("Recipe Print Successful");
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
