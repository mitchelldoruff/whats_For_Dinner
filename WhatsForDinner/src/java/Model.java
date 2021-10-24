import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;


public class Model {

	public static Connection createJDBCConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		String JdbcURL = "jdbc:mysql:///recipeDB";
		String Username = "root";
		String password = "1qaz2wsx!QAZ@WSX";
		Connection con = null;
		con=DriverManager.getConnection(JdbcURL, Username, password);
		return con;
	}
	public static Boolean getInstructions(PrintWriter out, String idRecipe) throws SQLException, ClassNotFoundException {
                
		Connection con = createJDBCConnection();
		Statement stmt = con.createStatement();
                //print recipe name
                ResultSet recipeName = stmt.executeQuery("SELECT * FROM recipe where idrecipe =" + idRecipe);
                recipeName.next();
                out.println(recipeName.getString(2));      
                recipeName.close();
                //Get Inctructions::
                stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT * FROM instructions_recipe");
                if (rs == null) {
                    con.close();
                    stmt.close();
                    rs.close();
                    return false;
                }
                String[] instructions = new String[20];
		while (rs.next()) {
				String id = rs.getString(1);
				String order = rs.getString(2);
                                String instruction = rs.getString(3);
                                if (id.equals(idRecipe)) {
                                    out.println("Step: " + order + ": Instruction: " + instruction);
                                }
		}
                
		con.close();
		stmt.close();
		rs.close();
		return true;
	}
        
        public static Boolean getRecipes(PrintWriter out) throws SQLException, ClassNotFoundException {
                
		Connection con = createJDBCConnection();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT * FROM recipe ORDER BY idRecipe");
                if (rs == null) {
                    return false;
                }
		while (rs.next()) {
				String id = rs.getString(1);
				String recipeName = rs.getString(2);
				out.println("ID: " + id + ", Name: " + recipeName);
		}
		con.close();
		stmt.close();
		rs.close();
		return true;
	}
        
                public static Boolean getMatches(PrintWriter out, List<String> ingredients) throws SQLException, ClassNotFoundException {
                

		Connection con = createJDBCConnection();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("SELECT * FROM req_ingr_recipe ORDER BY idRecipe");
                if (rs == null) {
                    return false;
                }
                ///////////////////Test Block input//////////////
                //int p = 1;
                //for (String ingredient : ingredients) {
                //        out.println(p + " " + ingredient);
                //        p++;
                //}
                /////////////////End test block//////////////
                
		while (rs.next()) {
				String id = rs.getString(1);
				String recipeName = rs.getString(2);
                                String ingredientList = rs.getString(3);
                                
                                ingredientList = ingredientList.toLowerCase();
                                //out.println(ingredientList + "/////////?CHECK ME/////////////");
                                //out.println(recipeName + "//////////////////////////////////////");
                                String[] ingrList = ingredientList.split(",");
                                List<String> ing = new ArrayList<String>();
                                for (int i = 0; i< ingrList.length; i++) {
                                    ing.add(ingrList[i]);
                                    //out.println(ing.get(i));
                                }
                                if (ingredients.containsAll(ing)) {
                                    out.println("ID: " + id + ", Name: " + recipeName + ", Ingredients: " + ingredientList);
                                }
		}
		con.close();
		stmt.close();
		rs.close();
		return true;
	}

}