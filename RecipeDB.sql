-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: localhost    Database: wfd
-- ------------------------------------------------------
-- Server version	8.0.27

DROP DATABASE IF EXISTS wfd;
CREATE DATABASE wfd;
Use wfd;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `idingredients` int NOT NULL,
  `recipe_key` int DEFAULT NULL,
  `ingredient_name` varchar(45) NOT NULL,
  `isoptional` varchar(6) NOT NULL,
  PRIMARY KEY (`idingredients`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES (1,1,'Macoroni and cheese','FALSE'),(2,1,'Milk','TRUE'),(3,1,'Salt','TRUE'),(4,1,'Pepper','TRUE'),(5,1,'Butter','TRUE'),(6,17,'vegetable oil','FALSE'),(7,17,'kielbasa sausage','FALSE'),(8,17,'red potatoes','FALSE'),(9,17,'red bell pepper','FALSE'),(10,17,'yellow bell pepper','FALSE'),(11,18,'Boneless Chicken','FALSE'),(12,18,'Diced Tomatoes','FALSE'),(13,18,'Green Chilis','FALSE'),(14,18,'Taco Seasoning','FALSE'),(15,18,'Chicken Broth','TRUE'),(16,19,'Salt','TRUE'),(17,19,'bucatini','FALSE'),(18,19,'Pecorino Romano','FALSE'),(19,19,'Black Pepper','TRUE'),(20,20,'fettuccine noodles','FALSE'),(21,20,'butter','FALSE'),(22,20,'Parmesan','TRUE'),(23,20,'Black Pepper','TRUE'),(24,21,'ravioli','FALSE'),(25,21,'half-and-half cream','FALSE'),(26,21,'Gouda','FALSE'),(27,21,'parsley','TRUE'),(28,21,'white pepper','TRUE'),(29,22,'chicken thighs','FALSE'),(30,22,'soy sauce','FALSE'),(31,22,'brown sugar','TRUE'),(32,23,'chicken breast','FALSE'),(33,23,'seasoned bread crumbs','FALSE'),(34,23,'BBQ sauce','FALSE'),(35,24,'boneless skinless chicken breasts','FALSE'),(36,24,'ranch dressing','FALSE'),(37,24,'broccoli','FALSE'),(38,24,'Cheddar','FALSE'),(39,24,'Bacon','FALSE'),(40,25,'Polish sausage','FALSE'),(41,25,'small head cabbage','FALSE'),(42,25,'small red potatoes','FALSE'),(43,25,'chili sauce','FALSE'),(44,25,'caraway seed','TRUE'),(45,25,'pepper','TRUE'),(46,26,'Pillsbury™ Classic Mini Pizza Crusts','FALSE'),(47,26,'pizza sauce','FALSE'),(48,26,'mozzarella','FALSE'),(49,26,'Parmesan','FALSE'),(50,13,'Bratwursts','TRUE'),(51,13,'Buns','TRUE'),(52,14,'Pound Bone in Pork Butt','TRUE'),(53,14,'bbq spice rub','FALSE'),(54,15,'dried pasta','TRUE'),(55,15,'cups marinara sauce','TRUE'),(56,16,'Ribeye Steak','TRUE'),(57,16,'Black Pepper','FALSE'),(58,16,'salt','FALSE'),(59,2,'Can of Soup','TRUE'),(60,3,'Bread Slices','TRUE'),(61,3,'Peanut Butter','TRUE'),(62,3,'Jelly','TRUE'),(63,4,'Bread Slices','TRUE'),(64,4,'Peanut Butter','TRUE'),(65,5,'Ramen Packet','TRUE'),(66,5,'Salt','FALSE'),(67,33,'jello','FALSE'),(68,33,'sugar','FALSE'),(69,34,'cardboard','FALSE'),(70,34,'salt','FALSE'),(71,34,'pepper','FALSE');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructions`
--

DROP TABLE IF EXISTS `instructions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructions` (
  `idinstructions` int NOT NULL,
  `recipe_key` int DEFAULT NULL,
  `instruction_order` int NOT NULL,
  `instruction_desc` varchar(500) NOT NULL,
  PRIMARY KEY (`idinstructions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructions`
--

LOCK TABLES `instructions` WRITE;
/*!40000 ALTER TABLE `instructions` DISABLE KEYS */;
INSERT INTO `instructions` VALUES (1,1,1,'Put 1 quarts of water in a boiling pot'),(2,1,2,'Add 2 tbsp of salt'),(3,1,3,'Turn on high heat'),(4,1,4,'Once water is boiling add Macoroni and set to medium heat'),(5,1,5,'Remove Cheese packet from box'),(6,1,6,'Add noodles to water'),(7,1,7,'Set timer to 7 minutes'),(8,1,8,'Stir immediately'),(9,1,9,'Stir every 2 minutes'),(10,1,10,'Once timer is done, check if noodles are al dente (soft)'),(11,1,11,'take a half cup of starch water'),(12,1,12,'Strain noodles from water'),(13,1,13,'Add noodles back to pot'),(14,1,14,'Add 2 tbsp of butter and stir until melted'),(15,1,15,'Add tsp of salt and pepper and stir in'),(16,1,16,'Add cheese packet and stir in'),(17,1,17,'Add milk slowly and stir until cheese is liquid and not clumpy'),(18,1,18,'Salt and pepper to taste and serve'),(19,13,1,'Heat Grill'),(20,13,2,'Cook bratwursts with grill lid on over indirect heat for 15/20 mins'),(21,13,3,'Place Bratwursts over direct heat 2/3 minutes until browned flip then wait another 2/3 mins until browned on other side then remove and place on plate'),(22,13,4,'slice buns and place one brat on each bun'),(23,13,5,'Add toppings as desired and enjoy!'),(24,14,1,'Heat Smoker to 275'),(25,14,2,'While Smoker Heating, rub pork all over with oil then pat rub generously all over until thouroughly covered'),(26,14,3,'Smoke until meat reaches internal temp of 203 and meat probes very tender'),(27,14,4,'Wrap meat in foil or butcher paper and let rest for 1 hr'),(28,14,5,'Gently shred and enjoy on buns or all by itself with sides of your choice'),(29,17,1,'Heat the oil in a saucepan over medium heat. Place kielbasa and potatoes in the saucepan. Cover, and cook 25 minutes, stirring occasionally, until potatoes are tender.'),(30,17,2,'Mix red bell pepper and yellow bell pepper into the saucepan, and continue cooking 5 minutes, until peppers are just tender.'),(31,18,1,'Pour the diced tomatoes into the slow cooker. Add the taco seasoning and mix thoroughly.'),(32,18,2,'Place the chicken in the slow cooker.'),(33,18,3,'Pour chicken broth over the chicken until the chicken is submerged in the broth and tomato mixture. Stir to combine everything.'),(34,18,4,'Put the lid on the slow cooker and set to low. After 4-5 hours the chicken will be fall apart tender.'),(35,18,5,'Use a fork to remove the chicken from the slow cooker. Shred with two forks.'),(36,18,6,'Use a slotted spoon to scoop the tomatoes out of the sauce, and add to the chicken. Add about 1 cup of the liquid from the slow cooker to the chicken and stir. I discarded the extra liquid in the slow cooker, and returned the chicken to the slow cooker and set to the keep warm setting during the party.'),(37,19,1,'Bring a large pot of water to a boil and add salt. Cook bucatini in the boiling water, stirring occasionally, until tender yet firm to the bite, 8 to 10 minutes.'),(38,19,2,'Place grated Pecorino Romano cheese into a large glass bowl and mix with a fork to make sure the cheese contains no lumps.'),(39,19,3,'Once the bucatini are al dente, lift them out with a spaghetti fork or tongs and put them directly into the bowl with the cheese. Do not allow the water to drain too much.'),(40,19,4,'Add one ladle of pasta water to the bowl. Stir the bucatini around until a cream has formed. Add more pasta water, little by little, until a thick cream has formed. Sprinkle freshly ground pepper over the pasta. Toss and serve immediately.'),(41,20,1,'Fill a large pot with lightly salted water and bring to a rolling boil. Stir in fettuccine, bring back to a boil, and cook pasta over medium heat until tender yet firm to the bite, 8 to 10 minutes. Drain and return pasta to pot.'),(42,20,2,'Mix butter, Parmesan cheese, salt, and pepper into pasta until evenly combined.'),(43,21,1,'Bring a large pot of lightly salted water to a rolling boil over high heat; stir in the frozen ravioli and return to a boil. Cook uncovered, stirring occasionally, until the ravioli float to the top and the filling is hot, 6 to 8 minutes. Drain.'),(44,21,2,'Meanwhile, bring the half-and-half to a simmer in a saucepan over medium heat. Whisk in the Gouda cheese until melted; season with parsley and white pepper. Pour the sauce over the cooked ravioli to serve.'),(45,22,1,'Sear the chicken thighs evenly in a pan, then flip.'),(46,22,2,'Add the soy sauce and brown sugar, stirring and bringing to a boil.'),(47,22,3,'Stir until the sauce has reduced and evenly glazes the chicken.'),(48,23,1,'Preheat oven to 375°F (190°C).'),(49,23,2,'Slice the chicken into even strips.'),(50,23,3,'Dip the chicken strips into the BBQ sauce, then coat them in the bread crumbs.'),(51,23,4,'Place on a baking sheet lined with parchment paper and bake for 15 minutes.'),(52,23,5,'Brush the remaining BBQ sauce evenly on both sides of the chicken strips and bake for another 10 minutes and serve.'),(53,24,1,'Heat oven to 400°F. Spray 6 sheets of heavy-duty foil with cooking spray.'),(54,24,2,'Place 1 boneless skinless chicken breast half in center of each sheet of foil. Sprinkle each with salt and pepper. Top each with 2 tablespoons ranch dressing, 1/4 cup cooked broccoli florets, 1/3 cup shredded Cheddar cheese and 1 tablespoon crumbled cooked bacon.'),(55,24,3,'For each foil pack, bring 2 sides of foil up over chicken-broccoli mixture so edges meet. Seal edges, making tight 1/2-inch fold; fold again, allowing space on sides for heat circulation and expansion. Fold other sides to seal. Place foil packets on ungreased large cookie sheet.'),(56,24,4,'Bake 30 minutes. Remove from oven; let stand 5 minutes before serving. Serve with additional ranch dressing, if desired.'),(57,25,1,'Heat grill. Cut four 18x12-inch pieces of heavy-duty foil. Divide sausage, cabbage and potatoes evenly onto foil.'),(58,25,2,'In small bowl, combine chili sauce, caraway seed and pepper; mix well. Spoon evenly over sausage and vegetables. Wrap each packet securely with double-fold seals, allowing room for heat expansion.'),(59,25,3,'When ready to grill, place packets on gas grill over medium-high heat or on charcoal grill 4 to 6 inches from medium-high coals. Cook 30 to 40 minutes or until cabbage and potatoes are tender. Open packets carefully to allow hot steam to escape.'),(60,26,1,'Heat oven to 375°F. Spray two large cookie sheets with cooking spray.'),(61,26,2,'Separate dough, and press into 6-inch rounds; place onto cookie sheets.'),(62,26,3,'Top each round with pizza sauce and cheeses.'),(63,26,4,'Bake one cookie sheet at a time on middle oven rack 12 to 16 minutes or until bottoms are deep golden brown and cheese is bubbly.'),(64,15,1,'Fill large saucepan or stockpot half-full with heavily salted water and bring to boil over high heat'),(65,15,2,'reduce heat to medium and add pasta. Cook 8-10 minutes until al dente.'),(66,15,3,'drain pasta in colander and return to cooking vessel'),(67,15,4,'reduce heat to low and stir in 1 cup of marinara. Split the pasta evenly into bowls and enjoy'),(68,16,1,'preheat grill to 400 degrees and set up for indirect heat'),(69,16,2,'take steak out and sprinkle with salt and pepper'),(70,16,3,'Place steak on grate pn the opposite side of coals or flame'),(71,16,4,'cook until probe reads 10 degrees under desired temperature then place above coals flames until seared and flip to repeat on other side'),(72,16,5,'Let rest 5/10 mins before slicing'),(73,2,1,'Put Can contents into a pot'),(74,2,2,'Put pot to a low heat on the stove'),(75,2,3,'Stir every 2 minutes'),(76,2,4,'Cook until warm enough to consume'),(77,3,1,'Grab two slices of bread, peanut butter, and jelly'),(78,3,2,'On one piece of bread spread peanut butter'),(79,3,3,'On the other spread the jelly'),(80,3,4,'Put pieces together'),(81,4,1,'Grab two slices of bread, peanut butter, and jelly'),(82,4,2,'On one piece of bread spread peanut butter'),(83,4,3,'Put pieces together'),(84,5,1,'Put 1 quarts of water in a boiling pot'),(85,5,2,'Add 2 tbsp of salt'),(86,5,3,'Turn on high heat'),(87,5,4,'Once water is boiling add Ramen and set to medium heat'),(88,5,5,'Once el dente drain half of the water'),(89,5,6,'Add spice Packet and serve'),(90,33,1,'put powder with water'),(91,33,2,'stir in sugar'),(92,33,3,'bake at 450 for thirty minutes'),(93,33,4,'rest in fridge for 8 hours'),(94,34,1,'Wet cardboard'),(95,34,2,'place on plate'),(96,34,3,'add salt and pepper to taste');
/*!40000 ALTER TABLE `instructions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `instructions_recipe`
--

DROP TABLE IF EXISTS `instructions_recipe`;
/*!50001 DROP VIEW IF EXISTS `instructions_recipe`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `instructions_recipe` AS SELECT 
 1 AS `idrecipe`,
 1 AS `instruction_order`,
 1 AS `instruction_desc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `maxes`
--

DROP TABLE IF EXISTS `maxes`;
/*!50001 DROP VIEW IF EXISTS `maxes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `maxes` AS SELECT 
 1 AS `max(idrecipe)`,
 1 AS `max(idinstructions)`,
 1 AS `max(idingredients)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `idrecipe` int NOT NULL,
  `recipe_name` varchar(80) NOT NULL,
  PRIMARY KEY (`idrecipe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,'Macaroni and Cheese'),(2,'Canned Chicken Noodle Soup'),(3,'Peanut Butter and Jelly'),(4,'Peanut Butter Sandwich'),(5,'Ramen Noodles'),(6,'Spaghetti'),(7,'Baked Potato'),(8,'Baked Chicken'),(9,'Baked Salmon'),(10,'Baked Brocolli'),(11,'Hot Dogs'),(12,'Burger'),(13,'Grilled Fresh Bratwurst'),(14,'Smoked Pulled Pork'),(15,'Pasta and marinara sauce'),(16,'Grilled Ribeye Steak'),(17,'Kielbasa with Peppers and Potatoes'),(18,'4 Ingredient Taco Chicken'),(19,'Bucatini Cacio e Pepe (Roman Sheep Herder\'s Pasta)'),(20,'Buttered Noodles'),(21,'Smoked Cheese Ravioli'),(22,'Teriyaki Chicken'),(23,'BBQ Chicken Tenders'),(24,'Chicken-Bacon-Ranch Foil Packs'),(25,'Polish Sausage and Cabbage Foil Packs'),(26,'Mini Cheese Pizzas'),(27,'Crackers and cheese'),(28,'Pizza melt'),(29,'Chicken burrito'),(30,'Omelet'),(31,'Baked french fries'),(32,'Nachos'),(33,'Jello'),(34,'Literal Cardboard');
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `req_ingr_recipe`
--

DROP TABLE IF EXISTS `req_ingr_recipe`;
/*!50001 DROP VIEW IF EXISTS `req_ingr_recipe`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `req_ingr_recipe` AS SELECT 
 1 AS `idrecipe`,
 1 AS `recipe_name`,
 1 AS `ingredients`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `instructions_recipe`
--

/*!50001 DROP VIEW IF EXISTS `instructions_recipe`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `instructions_recipe` AS select `recipe`.`idrecipe` AS `idrecipe`,`instructions`.`instruction_order` AS `instruction_order`,`instructions`.`instruction_desc` AS `instruction_desc` from (`recipe` left join `instructions` on((`instructions`.`recipe_key` = `recipe`.`idrecipe`))) order by `recipe`.`idrecipe`,`instructions`.`instruction_order` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `maxes`
--

/*!50001 DROP VIEW IF EXISTS `maxes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `maxes` AS select max(`recipe`.`idrecipe`) AS `max(idrecipe)`,max(`instructions`.`idinstructions`) AS `max(idinstructions)`,max(`ingredients`.`idingredients`) AS `max(idingredients)` from ((`recipe` join `ingredients`) join `instructions`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `req_ingr_recipe`
--

/*!50001 DROP VIEW IF EXISTS `req_ingr_recipe`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `req_ingr_recipe` AS select `recipe`.`idrecipe` AS `idrecipe`,`recipe`.`recipe_name` AS `recipe_name`,group_concat(`ingredients`.`ingredient_name` order by `ingredients`.`ingredient_name` ASC separator ',') AS `ingredients` from (`recipe` left join `ingredients` on((`recipe`.`idrecipe` = `ingredients`.`recipe_key`))) where (`ingredients`.`isoptional` like 'FALSE') group by `recipe`.`recipe_name`,`recipe`.`idrecipe` order by `recipe`.`recipe_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-30 23:31:52
