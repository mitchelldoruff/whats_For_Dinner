
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
        String JdbcURL = "jdbc:mysql:///wfd";
        String Username = "root";
        String password = "1qaz2wsx!QAZ@WSX";
        Connection con = null;
        con = DriverManager.getConnection(JdbcURL, Username, password);
        return con;
    }

    public static Boolean getInstructions(PrintWriter out, String idRecipe) throws SQLException, ClassNotFoundException {

        Connection con = createJDBCConnection();
        Statement stmt = con.createStatement();
        //print recipe name
        ResultSet recipeName = stmt.executeQuery("SELECT * FROM recipe where idrecipe =" + idRecipe);
        recipeName.next();
        String rName = recipeName.getString(2);
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
        String html = "<!DOCTYPE html>\n"
                + "<html lang=\"en\">\n"
                + "<head>\n"
                + "<title>CSS Template</title>\n"
                + "<meta charset=\"utf-8\">\n"
                + "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
                + "<style>\n"
                + "* {\n"
                + "  box-sizing: border-box;\n"
                + "}\n"
                + "\n"
                + "body {\n"
                + "  font-family: Arial, Helvetica, sans-serif;\n"
                + "}\n"
                + "\n"
                + "\n"
                + ".header {\n"
                + "  background-color: #f1f1f1;\n"
                + "  padding: 30px;\n"
                + "  text-align: center;\n"
                + "  font-size: 35px;\n"
                + "}\n"
                + "\n"
                + "/* Container for flexboxes */\n"
                + ".row {\n"
                + "  display: -webkit-flex;\n"
                + "  display: flex;\n"
                + "}\n"
                + "\n"
                + "\n"
                + "\n"
                + ".column {\n"
                + "  -webkit-flex: 1;\n"
                + "  -ms-flex: 1;\n"
                + "  flex: 1;\n"
                + "  padding: 10px;\n"
                + "  border-style:ridge;\n"
                + "border-color:grey;\n"
                + "\n"
                + "}\n"
                + "\n"
                + "/* Style the footer */\n"
                + ".footer {\n"
                + "  background-color: #f1f1f1;\n"
                + "  padding: 10px;\n"
                + "  text-align: center;\n"
                + "}\n"
                + "\n"
                + "\n"
                + "@media (max-width: 600px) {\n"
                + "  .row {\n"
                + "    -webkit-flex-direction: column;\n"
                + "    flex-direction: column;\n"
                + "  }\n"
                + "}\n"
                + "</style>\n"
                + "</head>\n"
                + "<body>\n"
                + "\n"
                + "\n"
                + "\n"
                + "<div class=\"header\">\n"
                + "  <h3>" + rName + "</h3>\n"
                + "</div>" + "<div class=\"column\" style=\"background-color:#bbb;\"><ol>";
        while (rs.next()) {
            String id = rs.getString(1);
            String order = rs.getString(2);
            String instruction = rs.getString(3);
            if (id.equals(idRecipe)) {
                html += "<li> " + instruction + "</li>";
            }
        }
        html += "</div>\n"
                + "\n"
                + "<div class=\"footer\">\n"
                + "  <p>" + "<a href=\"index.html\">Homepage</a></body>" + "</p>\n"
                + "</div>\n"
                + "\n"
                + "</body>\n"
                + "</html>";
        out.print(html);
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
        String html = "<!DOCTYPE html>\n"
                + "<!-- \n"
                + "    seaerch.html\n"
                + "    A list of search queries\n"
                + "    Created: 11/02/2021\n"
                + "    Updated: 11/09/2021\n"
                + "    Author: Tou Ko Lee\n"
                + " -->\n"
                + "\n"
                + "<html lang=\"en\">\n"
                + "\n"
                + "<head>\n"
                + "    <meta charset=\"utf-8\">\n"
                + "    <title>What's For Dinner</title>\n"
                + "    <link rel=\"stylesheet\" href=\"search.css\">\n"
                + "</head>\n"
                + "\n"
                + "<body>\n"
                + "    <h1>What's For Dinner</h1>\n"
                + "\n"
                + "    <div id=\"queries\">\n"
                + "        <div id=\"headers\">\n"
                + "            <h3>\n"
                + "                Recipe Name\n"
                + "            </h3>\n"
                + "        </div>";
        while (rs.next()) {
            String id = rs.getString(1);
            String recipeName = rs.getString(2);
            
                html += "<form class='queries' action=\"GetRecipeController\" method=\"get\">\n"
                        + "            <p class='name'>" + recipeName + "</p>\n"
                        + "<input type=\"text\" name = \"id\" id = \"asdf\" hidden value = \"" + id + "\">"
                        + "            <input type=\"Submit\" value=\"Select Recipe\">\n"
                        + "        </form>";
            
        }
        html += "  </div>\n"
                + "\n"
                + "<div class=\"footer\">\n"
                + "  <p>" + "<a href=\"index.html\">Homepage</a></body>" + "</p>\n"
                + "</div>\n"
                + "</body>\n"
                + "\n"
                + "</html>";
        out.println(html);
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
        String html = "<!DOCTYPE html>\n"
                + "<!-- \n"
                + "    seaerch.html\n"
                + "    A list of search queries\n"
                + "    Created: 11/02/2021\n"
                + "    Updated: 11/09/2021\n"
                + "    Author: Tou Ko Lee\n"
                + " -->\n"
                + "\n"
                + "<html lang=\"en\">\n"
                + "\n"
                + "<head>\n"
                + "    <meta charset=\"utf-8\">\n"
                + "    <title>What's For Dinner</title>\n"
                + "    <link rel=\"stylesheet\" href=\"search.css\">\n"
                + "</head>\n"
                + "\n"
                + "<body>\n"
                + "    <h1>What's For Dinner</h1>\n"
                + "\n"
                + "    <div id=\"queries\">\n"
                + "        <div id=\"headers\">\n"
                + "            <h3>\n"
                + "                Recipe Name\n"
                + "            </h3>\n"
                + "            <h3>\n"
                + "                Ingredients\n"
                + "            </h3>\n"
                + "        </div>";
        while (rs.next()) {
            String id = rs.getString(1);
            String recipeName = rs.getString(2);
            String ingredientList = rs.getString(3);

            ingredientList = ingredientList.toLowerCase();
            //out.println(ingredientList + "/////////?CHECK ME/////////////");
            //out.println(recipeName + "//////////////////////////////////////");
            String[] ingrList = ingredientList.split(",");
            List<String> ing = new ArrayList<String>();
            for (int i = 0; i < ingrList.length; i++) {
                ing.add(ingrList[i]);
                //out.println(ing.get(i));
            }
            if (ingredients.containsAll(ing)) {
                html += "<form class='queries' action=\"GetRecipeController\" method=\"get\">\n"
                        + "            <p class='name'>" + recipeName + "</p>\n"
                        + "            <p class='ingredient'>" + ing + "</p>\n"
                        + "<input type=\"text\" name = \"id\" id = \"asdf\" hidden value = \"" + id + "\">"
                        + "            <input type=\"Submit\" value=\"Select Recipe\">\n"
                        + "        </form>";
            }
        }
        html += "  </div>\n"
                + "\n"
                + "<div class=\"footer\">\n"
                + "  <p>" + "<a href=\"index.html\">Homepage</a></body>" + "</p>\n"
                + "</div>\n"
                + "</body>\n"
                + "\n"
                + "</html>";
        out.println(html);
        con.close();
        stmt.close();
        rs.close();
        return true;
    }
    
        public static Boolean addRecipe(PrintWriter out, String recipeName, String[] ingredients, String[] instructions) throws SQLException, ClassNotFoundException {

        Connection con = createJDBCConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM maxes");
        if (rs == null) {
            return false;
        }
        rs.next();
        int recipeID = Integer.parseInt(rs.getString(1)) + 1;
        int instructionID = Integer.parseInt(rs.getString(2)) + 1;
        int ingredientID = Integer.parseInt(rs.getString(3)) + 1;
        
        String x = "";
        int z = stmt.executeUpdate("INSERT INTO recipe" +
        " VALUES("+ recipeID + ", '" + recipeName + "')");
        if (z!= 0) { System.out.println("Record inserted"); } else out.println("not inserted");
       // x+="INSERT INTO recipe (recipeid, recipe_name) " +
        //" VALUES ("+ recipeID + ", '" + recipeName + "');\n\n";

        
        
        int i =0;
        while (ingredients[i] != null && i< ingredients.length){
            int l = stmt.executeUpdate("INSERT INTO ingredients " +
        " VALUES("+ingredientID + ", " + recipeID + ", '" + ingredients[i] + "', 'FALSE')");
            if (l!= 0) { System.out.println("Record inserted"); } else out.println("not inserted");
            //x+= "INSERT INTO ingredients "
         //           + "(idingredients, recipe_key, ingredient_name, isoptional) " +
        //" VALUES ("+ingredientID + ", " + recipeID + ", '" + ingredients[i] + "', 'FALSE');\n";
            i++;
            ingredientID++;
        }

        i=0;
        while(instructions[i] != null && i< instructions.length){
            int k = i + 1;
            int l = stmt.executeUpdate("INSERT INTO instructions " +
        " VALUES("+instructionID + ", " + recipeID + ", " + k + ", '" + instructions[i] + "')");
            if (l!= 0) { System.out.println("Record inserted"); } else out.println("not inserted");
            //x+= "INSERT INTO instructions "
            //        + "(idinstructions, recipe_key, instruction_order, instruction_desc) " +
        //" VALUES ("+instructionID + ", " + recipeID + ", " + (i+1) + ",'" + instructions[i] + "');\n";
            i++;
            instructionID++;
        }
        out.println("<!DOCTYPE html>\n" +
"<html lang=\"en\">\n" +
"<head>\n" +
"    <meta charset=\"UTF-8\">\n" +
"    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n" +
"    <title>whats For Dinner</title>\n" +
"    <link rel=\"stylesheet\" href=\"style.css\">\n" +
"    <link rel=\"preconnect\" href=\"https://fonts.googleapis.com\">\n" +
"    <script src=\"https://code.jquery.com/jquery-3.6.0.js\" integrity=\"sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=\" crossorigin=\"anonymous\"></script>\n" +
"    <script src=\"addRecipe.js\"></script>\n" +
"<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\" crossorigin>\n" +
"<link href=\"https://fonts.googleapis.com/css2?family=Lato:wght@900&family=Montserrat:wght@200&display=swap\" rel=\"stylesheet\">\n" +
"\n" +
"</head>\n" +
"<body>\n" +
"    <div class = \"container hero\"> <!--when a user lands on page it will show full height of image/stop when user scrolls down/ end based on where they land -->\n" +
"        <div class=\"menu\">\n" +
"    <nav>\n" +
"        <img class=\"logo\" src=\"newLogoY.png\" />\n" +
"        <ul>\n" +
"\n" +
"            <li><a href=\"index.html\" class=\"ttyl\">Home</a></li>\n" +
"            <li><form action=\"RecipeListController\" method=\"get\">\n" +
"	<input type = \"Submit\" class=\"ttyl\" value=\"Recipes\"/>\n" +
"        </form></li>\n" +
"            <li><a href=\"aboutus.html\" class=\"ttyl\">About us</a></li>\n" +
"        </ul>\n" +
"    </nav>\n" +
"\n" +
"    <div class=\"text\">\n" +
"      <h1>Add</h1>\n" +
"        <form action=\"AddRecipeController\" method=\"get\">\n" +
"        <label for=\"recipeName\">Recipe Name:</label>\n" +
"        <input type=\"text\" name = \"recipeName\" placeholder = \"name\" id=\"recipeName\">\n" +
"        <br><br>\n" +
"        <p id=\"ingredients\">Ingredients:\n" +
"        <span id =\"addIngr\" class=\"button\">+</span>\n" +
"        <input type=\"text\" name = \"ing1\" placeholder = \"ingredient\">\n" +
"\n" +
"        </p>\n" +
"        <br><br>\n" +
"        <p id=\"instructions\">Instructions:\n" +
"          <label id =\"addInst\" class=\"button\">+</label>\n" +
"          <input type=\"text\" name = \"inst1\" placeholder = \"instruction\">\n" +
"        </p>\n" +
"	       <input type = \"Submit\" value =\"Add Recipe\" class=\"button\"/>\n" +
"        </form>\n" +
"    </div>\n" +
"    </div>\n" +
"</div>\n" +
"\n" +
"\n" +
"</body>\n" +
"</html>\n" +
"");
        con.close();
        stmt.close();
        rs.close();
        return true;
    }

}
