-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (x86_64)
--
-- Host: localhost    Database: wfd
-- ------------------------------------------------------
-- Server version	8.0.27

DROP DATABASE IF EXISTS wfd;
CREATE DATABASE wfd;
use wfd;

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
INSERT INTO `ingredients` VALUES (1,1,'Macaroni and cheese','FALSE'),(2,1,'Milk','TRUE'),(3,1,'Salt','TRUE'),(4,1,'Pepper','TRUE'),(5,1,'Butter','TRUE'),(6,17,'vegetable oil','FALSE'),(7,17,'kielbasa sausage','FALSE'),(8,17,'red potato','FALSE'),(9,17,'red bell pepper','FALSE'),(10,17,'yellow bell pepper','FALSE'),(11,18,'Boneless Chicken','FALSE'),(12,18,'Tomato','FALSE'),(13,18,'Green Chilis','FALSE'),(14,18,'Taco Seasoning','FALSE'),(15,18,'Chicken Broth','TRUE'),(16,19,'Salt','TRUE'),(17,19,'bucatini','FALSE'),(18,19,'Pecorino Romano','FALSE'),(19,19,'Black Pepper','TRUE'),(20,20,'fettuccine noodles','FALSE'),(21,20,'butter','FALSE'),(22,20,'Parmesan','TRUE'),(23,20,'Black Pepper','TRUE'),(24,21,'ravioli','FALSE'),(25,21,'half-and-half cream','FALSE'),(26,21,'Gouda','FALSE'),(27,21,'parsley','TRUE'),(28,21,'white pepper','TRUE'),(29,22,'chicken thighs','FALSE'),(30,22,'soy sauce','FALSE'),(31,22,'brown sugar','TRUE'),(32,23,'chicken breast','FALSE'),(33,23,'seasoned bread crumbs','FALSE'),(34,23,'BBQ sauce','FALSE'),(35,24,'boneless skinless chicken breasts','FALSE'),(36,24,'ranch dressing','FALSE'),(37,24,'broccoli','FALSE'),(38,24,'Cheddar','FALSE'),(39,24,'Bacon','FALSE'),(40,25,'Polish sausage','FALSE'),(41,25,'small head cabbage','FALSE'),(42,25,'small red potatoes','FALSE'),(43,25,'chili sauce','FALSE'),(44,25,'caraway seed','TRUE'),(45,25,'pepper','TRUE'),(46,26,'Pillsbury Classic Mini Pizza Crusts','FALSE'),(47,26,'pizza sauce','FALSE'),(48,26,'mozzarella','FALSE'),(49,26,'Parmesan','FALSE'),(50,13,'Bratwursts','FALSE'),(51,13,'Buns','FALSE'),(52,14,'Pound Bone in Pork Butt','FALSE'),(53,14,'bbq spice rub','TRUE'),(54,15,'dried pasta','FALSE'),(55,15,'cups marinara sauce','FALSE'),(56,16,'Ribeye Steak','FALSE'),(57,16,'Black Pepper','TRUE'),(58,16,'salt','TRUE'),(59,2,'Can of Soup','FALSE'),(60,3,'Bread Slices','FALSE'),(61,3,'Peanut Butter','FALSE'),(62,3,'Jelly','FALSE'),(63,4,'Bread Slices','FALSE'),(64,4,'Peanut Butter','FALSE'),(65,5,'Ramen Packet','FALSE'),(66,5,'Salt','TRUE'),(67,28,'Wheat Bread','FALSE'),(68,28,'Butter','FALSE'),(69,28,'Italian Seasoning','TRUE'),(70,28,'mozzarella','FALSE'),(71,28,'marinara sauce','FALSE'),(72,28,'pepperoni','TRUE'),(73,7,'Russet potato','FALSE'),(74,10,'Head Broccoli','FALSE'),(75,10,'Olive OIL','FALSE'),(76,31,'Frozen French Fries','FALSE'),(77,8,'Bone in skin on chicken thighs or breasts','FALSE'),(78,12,'Ground beef(preferably 85/15)','FALSE'),(79,12,'Hamburger buns','FALSE'),(80,32,'Tortilla Chips','FALSE'),(81,32,'Nacho cheese','FALSE'),(82,11,'Hot Dogs','FALSE'),(83,11,'Hot Dog Buns','FALSE'),(84,9,'salmon fillet','FALSE'),(85,29,'deli rotisserie chicken','FALSE'),(86,29,'rice','TRUE'),(87,29,'Cheddar cheese','TRUE'),(88,29,'garlic powder','TRUE'),(89,29,'Old El Paso flour tortillas for burritos','FALSE'),(90,29,'Old El Paso Thick ‘n Chunky salsa','TRUE'),(91,30,'Egg','FALSE'),(92,30,'cheese','FALSE'),(93,30,'ham','FALSE'),(94,30,'salt','TRUE'),(95,30,'pepper','TRUE');
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
INSERT INTO `instructions` VALUES (1,1,1,'Put 1 quarts of water in a boiling pot'),(2,1,2,'Add 2 tbsp of salt'),(3,1,3,'Turn on high heat'),(4,1,4,'Once water is boiling add Macoroni and set to medium heat'),(5,1,5,'Remove Cheese packet from box'),(6,1,6,'Add noodles to water'),(7,1,7,'Set timer to 7 minutes'),(8,1,8,'Stir immediately'),(9,1,9,'Stir every 2 minutes'),(10,1,10,'Check if noodles are al dente (soft)'),(11,1,11,'take a half cup of starch water'),(12,1,12,'Strain noodles from water'),(13,1,13,'Add noodles back to pot'),(14,1,14,'Add 2 tbsp of butter and stir until melted'),(15,1,15,'Add tsp of salt and pepper and stir in'),(16,1,16,'Add cheese packet and stir in'),(17,1,17,'Add milk slowly and stir until cheese is liquid and not clumpy'),(18,1,18,'Salt and pepper to taste and serve'),(19,13,1,'Heat Grill'),(20,13,2,'Cook bratwursts with grill lid on over indirect heat for 15/20 mins'),(21,13,3,'Place Bratwursts over direct heat 2/3 minutes until browned'),(22,13,4,'flip then wait another 2/3 mins until browned on other side then remove'),(23,13,5,'slice buns and place one brat on each bun'),(24,13,6,'Add toppings as desired and enjoy!'),(25,14,1,'Heat Smoker to 275F'),(26,14,2,'Rub pork all over with oil then pat rub generously all over until thouroughly covered'),(27,14,3,'Smoke until meat reaches internal temp of 203 and meat probes very tender'),(28,14,4,'Wrap meat in foil or butcher paper and let rest for 1 hr'),(29,14,5,'Gently shred and enjoy on buns or all by itself with sides of your choice'),(30,17,1,'Heat the oil in a saucepan over medium heat.'),(31,17,2,'Place kielbasa and potatoes in the saucepan.'),(32,17,3,'Cover and cook 25 minutes stirring occasionally until potatoes are tender.'),(33,17,4,'Mix red bell pepper and yellow bell pepper into the saucepan'),(34,17,5,'continue cooking 5 minutes until peppers are just tender.'),(35,18,1,'Dice tomatoes'),(36,18,2,'Pour the diced tomatoes into the slow cooker.'),(37,18,3,'Add the taco seasoning and mix thoroughly.'),(38,18,4,'Place the chicken in the slow cooker.'),(39,18,5,'Pour chicken broth over the chicken until the chicken is submerged in the broth and tomato mixture.'),(40,18,6,'Stir to combine everything.'),(41,18,7,'Put the lid on the slow cooker and set to low.'),(42,18,8,'After 4-5 hours the chicken will be fall apart tender.'),(43,18,9,'Use a fork to remove the chicken from the slow cooker.'),(44,18,10,'Shred with two forks.'),(45,18,11,'Use a slotted spoon to scoop the tomatoes out of the sauce and add to the chicken.'),(46,18,12,'Add about 1 cup of the liquid from the slow cooker to the chicken and stir.'),(47,19,1,'Bring a large pot of water to a boil and add salt.'),(48,19,2,'Cook bucatini in the boiling water stirring occasionally until tender yet firm to the bite for 8 to 10 minutes.'),(49,19,3,'Place grated Pecorino Romano cheese into a large glass bowl and mix with a fork to make sure the cheese contains no lumps.'),(50,19,4,'Lift bucatini out into the bowl with the cheese. Do not allow the water to drain too much.'),(51,19,5,'Add one ladle of pasta water to the bowl.'),(52,19,6,'Stir the bucatini around until a cream has formed. Add more pasta water until a thick cream has formed.'),(53,19,7,'Sprinkle freshly ground pepper over the pasta.'),(54,20,1,'Fill a large pot with lightly salted water and bring to a boil.'),(55,20,2,'Stir in fettuccine and cook pasta over medium heat until tender yet firm to the bite for 8 to 10 minutes.'),(56,20,3,'Drain and return pasta to pot.'),(57,20,4,'Mix butter and Parmesan cheese and salt and pepper into pasta until evenly combined.'),(58,21,1,'Bring a large pot of lightly salted water to a rolling boil over high heat'),(59,21,2,'Stir in the frozen ravioli and return to a boil.'),(60,21,3,'Cook uncovered until the ravioli float to the top and the filling is hot for 6 to 8 minutes.'),(61,21,4,'Drain.'),(62,21,5,'Bring the half-and-half to a simmer in a saucepan over medium heat.'),(63,21,6,'Whisk in the Gouda cheese until melted and season with parsley and white pepper.'),(64,21,7,'Pour the sauce over the cooked ravioli to serve.'),(65,22,1,'Sear the chicken thighs evenly in a pan and flip.'),(66,22,2,'Add the soy sauce and brown sugar'),(67,22,3,'Stir and bring to a boil.'),(68,22,4,'Stir until the sauce has reduced and evenly glazes the chicken.'),(69,23,1,'Preheat oven to 375F.'),(70,23,2,'Slice the chicken into even strips.'),(71,23,3,'Dip the chicken strips into the BBQ sauce and then coat them in the bread crumbs.'),(72,23,4,'Place on a baking sheet lined with parchment paper and bake for 15 minutes.'),(73,23,5,'Brush the remaining BBQ sauce evenly on both sides of the chicken strips'),(74,23,6,'Bake for another 10 minutes and serve.'),(75,24,1,'Heat oven to 400F. Spray 6 sheets of heavy-duty foil with cooking spray.'),(76,24,2,'Place 1 boneless skinless chicken breast half in center of each sheet of foil.'),(77,24,3,'Sprinkle each with salt and pepper.'),(78,24,4,'Top each with 2 tablespoons ranch dressing.'),(79,24,5,'Top each with 1/4 cup cooked broccoli florets.'),(80,24,6,'Top each with 1/3 cup shredded Cheddar cheese and 1 tablespoon crumbled cooked bacon.'),(81,24,7,'Bring 2 sides of foil up over chicken-broccoli mixture so edges meet for each.'),(82,24,8,'Seal edges making tight 1/2-inch fold.'),(83,24,9,'Fold again to allow space on sides for heat circulation and expansion.'),(84,24,10,'Fold other sides to seal.'),(85,24,11,'Place foil packets on ungreased large cookie sheet.'),(86,24,12,'Bake 30 minutes.'),(87,24,13,'Remove from oven and let stand 5 minutes before serving.'),(88,24,14,'Serve with additional ranch dressing if desired.'),(89,25,1,'Heat grill.'),(90,25,2,'Cut four 18x12-inch pieces of heavy-duty foil.'),(91,25,3,'Divide sausage and cabbage and potatoes evenly onto foil.'),(92,25,4,'In small bowl combine chili sauce and caraway seed and pepper'),(93,25,5,'Mix well.'),(94,25,6,'Spoon evenly over sausage and vegetables.'),(95,25,7,'Wrap each packet securely with double-fold seals to allow room for heat expansion.'),(96,25,8,'Place packets on gas grill over medium-high heat or on charcoal grill 4 to 6 inches from medium-high coals.'),(97,25,9,'Cook 30 to 40 minutes or until cabbage and potatoes are tender. Open packets carefully to allow hot steam to escape.'),(98,26,1,'Heat oven to 375F.'),(99,26,2,'Spray two large cookie sheets with cooking spray.'),(100,26,3,'Separate dough and press into 6-inch rounds onto cookie sheets.'),(101,26,4,'Top each round with pizza sauce and cheeses.'),(102,26,5,'Bake one cookie sheet at a time on middle oven rack 12 to 16 minutes or until bottoms are deep golden brown and cheese is bubbly.'),(103,15,1,'Fill large saucepan or stockpot half-full with heavily salted water and bring to boil over high heat'),(104,15,2,'reduce heat to medium and add pasta.'),(105,15,3,'Cook 8-10 minutes until al dente.'),(106,15,4,'drain pasta in colander and return to cooking vessel'),(107,15,5,'reduce heat to low and stir in 1 cup of marinara.'),(108,16,1,'preheat grill to 400 degrees and set up for indirect heat'),(109,16,2,'take steak out and sprinkle with salt and pepper'),(110,16,3,'Place steak on grate pn the opposite side of coals or flame'),(111,16,4,'cook until probe reads 10 degrees under desired temperature then place above coals flames until seared and flip to repeat on other side'),(112,16,5,'Let rest 5/10 mins before slicing'),(113,2,1,'Put Can contents into a pot'),(114,2,2,'Put pot to a low heat on the stove'),(115,2,3,'Stir every 2 minutes'),(116,2,4,'Cook until warm enough to consume'),(117,3,1,'Grab two slices of bread.'),(118,3,2,'On one piece of bread spread peanut butter'),(119,3,3,'On the other spread the jelly'),(120,3,4,'Put pieces together and cut in half if desired.'),(121,4,1,'Grab two slices of bread.'),(122,4,2,'On one piece of bread spread peanut butter'),(123,4,3,'Put pieces together and cut in half if desired.'),(124,5,1,'Put 1 quarts of water in a boiling pot'),(125,5,2,'Add 2 tbsp of salt'),(126,5,3,'Turn on high heat'),(127,5,4,'Once water is boiling add Ramen and set to medium heat'),(128,5,5,'Once el dente drain half of the water'),(129,5,6,'Add spice Packet and serve'),(130,28,1,'Stir melted butter (optional) parmesean and (optional) until evenly combined then spread onto one side of each slice of bread.'),(131,28,2,'Spread half of marinara sauce evenly onto unbuttered half of each bread slice.'),(132,28,3,'Top the marinara with the cheese'),(133,28,4,'With the butterd side of the bread facing out place the 2 slices together.'),(134,28,5,'Preheat a skillet over medium head and cook until golden brown on each side'),(135,28,6,'Cut in half and enjoy!'),(136,7,1,'Preheat oven to 350'),(137,7,2,'While oven is preheating poke holes in several spots with a fork'),(138,7,3,'place potato in oven for 1 to 1.5 hours until flesh easily pierces with a fork'),(139,7,4,'Cut in half and put on desired toppings.'),(140,10,1,'Preheat Oven to 350'),(141,11,2,'While oven is preheating drizzle with olive oil and sprinkle with salt and pepper (if desired).'),(142,12,3,'Roast directly on rack for 25-30 minutes until tender'),(143,31,1,'Preheat oven to 450 or as directed on packaging'),(144,31,2,'Place on baking sheet lined with aluminum foil and season as desired'),(145,31,3,'Bake 15-20 minutes until golden brown and remove from oven and let sit 2 minutes to cool.'),(146,6,1,'Fill Large saucepan or stockpot half-full with heavily salted water and bring to boil over high heat'),(147,6,2,'Once boiling place 8 oz pasta in water and boil 8 minutes or until tender'),(148,6,3,'drain thoroughly and divide evenly into serving bowls'),(149,6,4,'Pour sauce of your choice over pasta and enjoy'),(150,8,1,'Preheat oven to 350'),(151,8,2,'Take small ovenproof baking dish or cookie sheet and coat with nonstick spray'),(152,8,3,'Season chicken if desired and place on baking dish/sheet and cook in oven for 25/30 minutes or until internal temp of 160'),(153,8,4,'Remove from oven and let cool then slice'),(154,12,1,'Preheat grill and set for direct heat (or a cast iron pan on medium high)'),(155,12,2,'Take ground beef and make for flat evenly sized patties season with salt and pepper if desired for best results'),(156,12,3,'Cook until solid char marks appear and flip'),(157,12,4,'cook on other side to desired doness'),(158,12,5,'remove and place each patty on a bun'),(159,32,1,'Place Nacho Cheese sauce into microwave safe bowl'),(160,32,2,'Cover with paper towel and microwave.  Stir and microwave another 30 seconds'),(161,32,3,'Plac Tortilla chips on a serving platter and pour cheesse over top and along with other toppings as desired.'),(162,11,1,'Preheat grill to medium high heat'),(163,11,2,'Grill hot dogs until browned on all sides and heated through'),(164,11,3,'Place in buns.  Top with desired toppings and enjoy'),(165,9,1,'Preheat the oven to 375'),(166,9,2,'Bake salmon covered in foil for 10 minutes or until tender.'),(167,29,1,'Preheat the oven to 375'),(168,29,2,'Heat salsa and water to boiling in 1-quart saucepan.'),(169,29,3,'Stir in rice and cover'),(170,29,4,'Remove for heat and let stand for 5 minutes'),(171,29,5,'Stir chicken and cheese and garlic powder into rice mixture.'),(172,29,6,'Spoon 1/2 cup chicken-rice mixture onto center of each tortilla'),(173,29,7,'Fold bottom 1/3 of tortilla over filling;fold in sides toward center and leaving the top open.'),(174,29,8,'Place seam side down in ungreased 9x9-inch (2-quart) glass baking dish'),(175,29,9,'Cover tightly with foil and bake 20 to 30 minutes or until hot'),(176,30,1,'Get one slice of ham and finely chop it.'),(177,30,2,'Shred the cheese you want'),(178,30,3,'Crack open 4 eggs into a bowl'),(179,30,4,'Whisk the eggs together.'),(180,30,5,'stir in your finely chopped ham'),(181,30,6,'add in salt and pepper if desired'),(182,30,7,'Heat oil on a pan over medium-high heat.'),(183,30,8,'Pour in egg mixture'),(184,30,9,'Stir every once in a while until there is no more liquid egg'),(185,30,10,'Sprinkle cheese on one half and fold egg in half.'),(186,30,11,'Slide egg onto plate and enjoy.');
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
INSERT INTO `recipe` VALUES (1,'Macaroni and Cheese'),(2,'Canned Chicken Noodle Soup'),(3,'Peanut Butter and Jelly'),(4,'Peanut Butter Sandwich'),(5,'Ramen Noodles'),(6,'Spaghetti'),(7,'Baked Potato'),(8,'Baked Chicken'),(9,'Baked Salmon'),(10,'Baked Brocolli'),(11,'Hot Dogs'),(12,'Burger'),(13,'Grilled Fresh Bratwurst'),(14,'Smoked Pulled Pork'),(15,'Pasta and marinara sauce'),(16,'Grilled Ribeye Steak'),(17,'Kielbasa with Peppers and Potatoes'),(18,'4 Ingredient Taco Chicken'),(19,'Bucatini Cacio e Pepe'),(20,'Buttered Noodles'),(21,'Smoked Cheese Ravioli'),(22,'Teriyaki Chicken'),(23,'BBQ Chicken Tenders'),(24,'Chicken-Bacon-Ranch Foil Packs'),(25,'Polish Sausage and Cabbage Foil Packs'),(26,'Mini Cheese Pizzas'),(27,'Crackers and cheese'),(28,'Pizza melt'),(29,'Chicken burrito'),(30,'Ham and Cheese Omelet'),(31,'Baked french fries'),(32,'Nachos');
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
/*!50001 VIEW `req_ingr_recipe` AS select `recipe`.`idrecipe` AS `idrecipe`,`recipe`.`recipe_name` AS `recipe_name`,group_concat(`ingredients`.`ingredient_name` order by `ingredients`.`ingredient_name` ASC separator ',') AS `ingredients` from (`recipe` left join `ingredients` on((`recipe`.`idrecipe` = `ingredients`.`recipe_key`))) where (`ingredients`.`isoptional` like 'FALSE') group by `recipe`.`recipe_name`,`recipe`.`idrecipe` order by `recipe`.`idrecipe` */;
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

-- Dump completed on 2021-12-03 13:00:58
