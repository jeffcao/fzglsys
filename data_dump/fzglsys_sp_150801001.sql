-- MySQL dump 10.13  Distrib 5.6.24, for osx10.6 (x86_64)
--
-- Host: localhost    Database: fzglsys
-- ------------------------------------------------------
-- Server version	5.6.24
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping routines for database 'fzglsys'
--
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fzglsys_get_next_seq`(
module_name varchar(255)
)
BEGIN
	
    declare seq_prefix varchar(6);
    declare next_seq varchar(10); 
    declare min_seq varchar(10);
    declare dan_count int;
    declare cur_seq varchar(10);
    
    set seq_prefix = DATE_FORMAT(NOW(), '%Y%m');
    set min_seq = CONCAT(seq_prefix,'0000');
    
    select seq into cur_seq from fzglsys_seq 
		where module_name = module_name and seq > min_seq;

    if cur_seq is not null then
		select cur_seq + 1 into next_seq;
	else
		select max(name) into cur_seq from liuch_fangkuang_liucheng 
			where name like CONCAT(seq_prefix, '%');
        if cur_seq is not null then
			select cur_seq + 1 into next_seq;
		else
			select min_seq + 1 into next_seq;
        end if;
		
    end if;
    
    update fzglsys_seq set seq = next_seq where module_name = module_name;
    
    select next_seq;
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
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-01 19:45:57
