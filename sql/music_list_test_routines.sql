CREATE DATABASE  IF NOT EXISTS `music_list_test` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `music_list_test`;
-- MySQL dump 10.13  Distrib 5.7.9, for linux-glibc2.5 (x86_64)
--
-- Host: 192.168.11.60    Database: music_list_test
-- ------------------------------------------------------
-- Server version	5.6.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `view_artist_info`
--

DROP TABLE IF EXISTS `view_artist_info`;
/*!50001 DROP VIEW IF EXISTS `view_artist_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_artist_info` AS SELECT 
 1 AS `ID_List`,
 1 AS `ID_Artist`,
 1 AS `Name`,
 1 AS `Count`,
 1 AS `Love`,
 1 AS `Hide`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_artist_info_full`
--

DROP TABLE IF EXISTS `view_artist_info_full`;
/*!50001 DROP VIEW IF EXISTS `view_artist_info_full`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_artist_info_full` AS SELECT 
 1 AS `ID`,
 1 AS `ID_Artist`,
 1 AS `Artist_Name`,
 1 AS `Count`,
 1 AS `Love`,
 1 AS `Hide`,
 1 AS `ID_List`,
 1 AS `Title`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_category`
--

DROP TABLE IF EXISTS `view_category`;
/*!50001 DROP VIEW IF EXISTS `view_category`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_category` AS SELECT 
 1 AS `ID`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_list`
--

DROP TABLE IF EXISTS `view_list`;
/*!50001 DROP VIEW IF EXISTS `view_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_list` AS SELECT 
 1 AS `ID_List`,
 1 AS `Name`,
 1 AS `Title`,
 1 AS `Url`,
 1 AS `IsShuffle`,
 1 AS `ID_Category`,
 1 AS `Category`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_artist_info`
--

/*!50001 DROP VIEW IF EXISTS `view_artist_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_artist_info` AS select `artist_and_list`.`ID_List` AS `ID_List`,`artist_and_list`.`ID_Artist` AS `ID_Artist`,`artist_info`.`Name` AS `Name`,`artist_info`.`Count` AS `Count`,`artist_info`.`Love` AS `Love`,`artist_info`.`Hide` AS `Hide` from (`artist_info` join `artist_and_list` on((`artist_info`.`ID` = `artist_and_list`.`ID_Artist`))) order by `artist_and_list`.`ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_artist_info_full`
--

/*!50001 DROP VIEW IF EXISTS `view_artist_info_full`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_artist_info_full` AS select `artist_and_list`.`ID` AS `ID`,`artist_and_list`.`ID_Artist` AS `ID_Artist`,`artist_info`.`Name` AS `Artist_Name`,`artist_info`.`Count` AS `Count`,`artist_info`.`Love` AS `Love`,`artist_info`.`Hide` AS `Hide`,`artist_and_list`.`ID_List` AS `ID_List`,`list`.`Title` AS `Title` from ((`artist_info` join `artist_and_list`) join `list`) where ((`artist_and_list`.`ID_Artist` = `artist_info`.`ID`) and (`artist_and_list`.`ID_List` = `list`.`ID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_category`
--

/*!50001 DROP VIEW IF EXISTS `view_category`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_category` AS select `category`.`ID` AS `ID`,`category`.`Name` AS `Name` from `category` order by `category`.`ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_list`
--

/*!50001 DROP VIEW IF EXISTS `view_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_list` AS select `list`.`ID` AS `ID_List`,`list`.`Name` AS `Name`,`list`.`Title` AS `Title`,`list`.`Url` AS `Url`,`list`.`IsShuffle` AS `IsShuffle`,`category`.`ID` AS `ID_Category`,`category`.`Name` AS `Category` from (`list` left join `category` on((`list`.`ID_Category` = `category`.`ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'music_list_test'
--
/*!50003 DROP FUNCTION IF EXISTS `get_category_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_category_id`(_category_name varchar(255)) RETURNS tinyint(3) unsigned
BEGIN
	declare is_new_category bit(1);
	declare category_id tinyint unsigned;
	
	SELECT count(`ID`)=0, `ID` into is_new_category, category_id FROM `category` where `Name` = _category_name;
	if is_new_category = 1 then
		insert into `category` (`Name`) values (_category_name);
		set category_id = LAST_INSERT_ID();
	end if;
	
	RETURN category_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `trim_value` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `trim_value`(_value text) RETURNS text CHARSET utf8
BEGIN
	declare EXPR varchar(255) default "^(32|14909568|9)$"; 
	declare trimmed_text text;
	declare text_length varchar(255);
	declare i tinyint unsigned;
	declare is_valid_text bit(1);
	set trimmed_text = _value;
	
	
	set text_length = char_length(trimmed_text);
	set i = 0;
	ltrim: while i <= text_length do
		select ord(substring(trimmed_text, 1, 1)) not regexp EXPR into is_valid_text;
		if is_valid_text = 1 then
			leave ltrim;
		end if;
		set trimmed_text = substring(trimmed_text, 2);
		set i = i + 1;
	end while;
	
	
	set text_length = char_length(trimmed_text);
	rtrim: while -1 >= -text_length do
		select ord(substring(trimmed_text, -1)) not regexp EXPR into is_valid_text;
		if is_valid_text = 1 then
			leave rtrim;
		end if;
		set text_length = text_length - 1;
		set trimmed_text = substring(trimmed_text, 1, text_length);
	end while;
	
	RETURN trimmed_text;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_category` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_category`(
	out id_category int(10),
	in category varchar(255)
)
BEGIN
	insert into `category` (
		`Name`
	) values (
		category
	);

	
	select LAST_INSERT_ID() into id_category;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_list`(
	
	

	
	in list_name varchar(255),		
	in title varchar(255),			
	in url varchar(255),			
	in is_shuffle bit(1),			
	in category_name varchar(255),	
	in artist_names text			
)
BEGIN
	
	
	
	
	declare list_id smallint unsigned;

	
	
	
	
	
	
	call insert_list(list_id, list_name, title, url, is_shuffle, category_name);
	call insert_artists(list_id, artist_names);
	
	
	select 'success' as `status`, list_id as `result`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_old_artists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_old_artists`(in list_id int)
BEGIN

declare artist_id int;

 
 
 declare v_done int default 0;
 
 declare artist_name varchar(255);
 

 declare v_cur cursor for
	SELECT * FROM `temp_db_minus`
 ;


 
 declare continue handler for sqlstate '02000' set v_done = 1;

 
 open v_cur;

 
 repeat
   
   fetch v_cur into artist_name;
   
	if not v_done then
		select ID into artist_id from `artist_info` where `Name`=artist_name;
		
		delete from `artist_and_list` where `ID_Artist`=artist_id and `ID_List`= list_id;
   end if;
 
 until v_done
 end repeat;

 
 close v_cur;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `edit_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `edit_list`(
	in list_id smallint,
	in list_name varchar(255),
	in title varchar(255),
	in url varchar(255),
	in is_shuffle bit(1),
	in category_name varchar(255),
	in artist_names text
)
BEGIN
	call update_list(list_id, list_name, title, url, is_shuffle, category_name);
	call update_artists(list_id, artist_names);

	
	select 'success' as `status`, list_id as `result`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_artists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_artists`(
	in id_list int(10),
	in artist_names text
)
BEGIN
	
	
	
	
	
	
	
	
	

	declare is_new_artist bit(1);
	declare is_duplicated_insert bit(1);
	declare id_artist int(10);
	
	declare delim char(1) default "\n";
	declare delim_length int default char_length(delim);
	declare an_end int(10);
	declare artist_name_original varchar(255);
	declare artist_name_lower varchar(255);
	declare error_message varchar(255);

	
	
	set artist_names = concat(artist_names, "\n");
	continue_loop: WHILE (LOCATE(delim, artist_names) > 0)
	DO
		set an_end = LOCATE(delim, artist_names) - delim_length;
		if an_end = 0 then
			set an_end = 1;
		end if;

		
		
		
		
		
		
		
		SET artist_name_original = trim_value(SUBSTRING(artist_names, 1, an_end));
		SET artist_name_lower = lower(artist_name_original);
		SET artist_names = SUBSTRING(artist_names, LOCATE(delim, artist_names) + delim_length);
		if artist_name_original = "\n" then
			iterate continue_loop;
		end if;
		
		
		
		SELECT count(`Name`)=0, `ID` into is_new_artist, id_artist FROM `artist_info` where `name_lower` = artist_name_lower;
		if is_new_artist = 1 then
			insert into `artist_info` (`name_lower`, `Name`) values (artist_name_lower, artist_name_original);
			set id_artist = LAST_INSERT_ID();
		end if;
		
		
		
		
		
		
		SELECT count(`ID_Artist`)>0 into is_duplicated_insert from `artist_and_list` where `artist_and_list`.`ID_List` = id_list and `artist_and_list`.`ID_Artist` = id_artist;
		if is_duplicated_insert = 0 then
			insert into `artist_and_list` (
				`ID_List`, `ID_Artist`
			) values (
				id_list, id_artist
			);
		end if;
        
	END WHILE;
	
	
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_list`(
	out list_id smallint unsigned,
	in list_name varchar(255),
	in title varchar(255),
	in url varchar(255),
	in is_shuffle bit(1),
	in category_name varchar(255)
)
BEGIN
	
	
	
	
	
	
	declare is_new_category bit(1);
	declare category_id tinyint unsigned;

	
	
	declare is_listname_exists bit(1);
	declare error_message varchar(255);
	select count(list_name) > 0 into is_listname_exists from `list` where `Name` = list_name;
	if is_listname_exists = 1 then
		set error_message = concat('Specified listname "', list_name ,'" already exists.');
		select 'error' as `status`, error_message as `result`;
		SIGNAL SQLSTATE '23000' SET MESSAGE_TEXT = error_message;
	end if;

	
	SELECT count(`ID`)=0, `ID` into is_new_category, category_id FROM `category` where `Name` = category_name;
	if is_new_category = 1 then
		insert into `category` (`Name`) values (category_name);
		set category_id = LAST_INSERT_ID();
	end if;

	
	insert into `list` (
		`Name`, `Title`, `Url`, `IsShuffle`, `ID_Category`
	) values (
		list_name, title, url, is_shuffle, category_id
	);

	
	select LAST_INSERT_ID() into list_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_list`(
	in _list_id smallint
)
BEGIN
	
	
	
	
	
	
	
	delete from `list` where `ID` = _list_id;
	
	
	select 'success' as `status`, _list_id as `result`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_obsoleted_artists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_obsoleted_artists`(
	in _id_list smallint,
	in artist_names text
)
BEGIN
	
	
	
	
	
	
	
	
	

	declare TEMP_OBSOLETE_LIST varchar(255) default concat('temp_obsolete_list_', now());
	
	declare delim char(1) default "\n";
	declare delim_length int default char_length(delim);
	declare an_end smallint unsigned;
	declare artist_name_original varchar(255);
	declare artist_name_lower varchar(255);
	declare error_message varchar(255);

	
	
	
	create temporary table TEMP_OBSOLETE_LIST select * from `artist_and_list` where `ID_List` = _id_list;

	
	
	set artist_names = concat(artist_names, "\n");
	continue_loop: WHILE (LOCATE(delim, artist_names) > 0)
	DO
		set an_end = LOCATE(delim, artist_names) - delim_length;
		if an_end = 0 then
			set an_end = 1;
		end if;

		
		
		
		
		
		
		
		SET artist_name_original = trim_value(SUBSTRING(artist_names, 1, an_end));
		SET artist_name_lower = lower(artist_name_original);
		SET artist_names = SUBSTRING(artist_names, LOCATE(delim, artist_names) + delim_length);
		if artist_name_original = "\n" then
			iterate continue_loop;
		end if;
		
		
		
		delete from TEMP_OBSOLETE_LIST where `ID_Artist` = (
			select `ID` from artist_info where `name_lower` = artist_name_lower
		);
		
	END WHILE;
	
	
	
	delete from `artist_and_list` where `ID_List` = _id_list and `ID_Artist` in (select `ID_Artist` from TEMP_OBSOLETE_LIST);
	
	drop table TEMP_OBSOLETE_LIST;
	
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sweap_orphaned_category` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sweap_orphaned_category`()
BEGIN
	declare TABLE_RESULT varchar(255) default concat('temp_result_', now());


	
	
	declare v_done int default 0;
	
	declare category_id smallint;
	declare is_orphaned_category bit(1);
	
	
	declare v_cur cursor for
		select `ID` from `category`
	;
	
	declare continue handler for sqlstate '02000' set v_done = 1;
	
	
	
	create temporary table TABLE_RESULT select * from `category` where `ID` = -1;

	
	open v_cur;


	
	repeat
		
		fetch v_cur into category_id;
			
			if not v_done then
				
				select count(`ID_Category`)=0 into is_orphaned_category from `list` where `ID_Category` = category_id;
				if is_orphaned_category then
					insert into TABLE_RESULT (select * from `category` where `ID` = category_id);
					delete from `category` where `ID` = category_id;
				end if;

			end if;
			
		until v_done
	end repeat;

		
	close v_cur;

	select * from TABLE_RESULT order by `ID`;
	drop table TABLE_RESULT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sweap_orphaned_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sweap_orphaned_list`()
BEGIN
	declare TABLE_RESULT varchar(255) default concat('temp_result_', now());


	
	
	declare v_done int default 0;
	
	declare list_id smallint;
	declare is_orphaned_list bit(1);
	
	
	declare v_cur cursor for
		select `ID` from `list`
	;
	
	declare continue handler for sqlstate '02000' set v_done = 1;
	
	
	
	create temporary table TABLE_RESULT select * from `list` where `ID` = -1;

	
	open v_cur;


	
	repeat
		
		fetch v_cur into list_id;
			
			if not v_done then
				
				select count(`ID`)=0 into is_orphaned_list from `artist_and_list` where `ID_List` = list_id;
				if is_orphaned_list then
					insert into TABLE_RESULT (select * from `list` where `ID` = list_id);
					delete from `list` where `ID` = list_id;
				end if;

			end if;
			
		until v_done
	end repeat;

		
	close v_cur;

	select * from TABLE_RESULT order by `ID`;
	drop table TABLE_RESULT;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tesuto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tesuto`(
in id bit(2)
)
BEGIN
	select id;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_artists` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_artists`(
	in id_list smallint,
	in artist_names text
)
BEGIN
	call remove_obsoleted_artists(id_list, artist_names);
	call insert_artists(id_list, artist_names);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_artist_and_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_artist_and_list`(in list_id int)
BEGIN
	declare is_artist_exists int;
	declare artist_id int;
	
	declare max_id int;

	
	
	declare v_done int default 0;
	
	declare artist_name varchar(255);
	
	declare v_cur cursor for
		select * from `temp_db_current`
	;
	
	declare continue handler for sqlstate '02000' set v_done = 1;

	
	open v_cur;

	
	repeat
		
		fetch v_cur into artist_name;
			
			if not v_done then
				select count(`ID`), `ID` into is_artist_exists, artist_id from `artist_info` where name_lower = lower(artist_name);

				if is_artist_exists = 0 then
					
					insert into `artist_info` (`name_lower`, `Name`) values (lower(artist_name), artist_name);
					select LAST_INSERT_ID() into artist_id;
					insert into `artist_and_list` (`ID_List`, `ID_Artist`) values (list_id, artist_id);
				else
					
					select MAX(`ID`) from `artist_and_list` into max_id;
					insert into `artist_and_list` (`ID_List`, `ID_Artist`) values (list_id, artist_id)
					on duplicate key
					update `ID` = max_id+1;

					
					
					
					
				end if;

			end if;
			
		until v_done
	end repeat;

		
	close v_cur;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_list` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_list`(
	in _list_id smallint,
	in _list_name varchar(255),
	in _title varchar(255),
	in _url varchar(255),
	in _is_shuffle bit(1),
	in _category_name varchar(255)
)
BEGIN
	
	
	
	
	declare category_id tinyint unsigned;
	
	set category_id = get_category_id(_category_name);
	
	
	update `list` set
		`Name` = _list_name,
		`Title` = _title,
		`Url` = _url,
		`IsShuffle` = _is_shuffle,
		`ID_Category` = category_id
	where `ID` = _list_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `validate_boolean` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `validate_boolean`(
	in _column_name varchar(64),
	in _target int8 unsigned
)
BEGIN
	declare error_message varchar(255);

	if length(_target) > 2 then
		set error_message = concat('Invalid boolean value has passed to `', _column_name, '`.');
		select 'error' as `status`, error_message as `result`;
		SIGNAL SQLSTATE '23000' SET MESSAGE_TEXT = error_message;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `validate_char_length` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `validate_char_length`(
	in _column_name varchar(64),
	in _target longtext,
	in _max_length int8 unsigned
)
BEGIN
	declare error_message varchar(255);

	if length(_target) > _max_length then
		set error_message = concat('Too long values has passed to `', _column_name, '`. It should be less than ', _max_length, ' bytes.');
		select 'error' as `status`, error_message as `result`;
		SIGNAL SQLSTATE '23000' SET MESSAGE_TEXT = error_message;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-01 18:46:36
