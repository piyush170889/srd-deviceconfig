-- MySQL dump 10.13  Distrib 5.6.24, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: deviceconfig
-- ------------------------------------------------------
-- Server version	5.6.22-log

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
-- Table structure for table `device_master`
--

DROP TABLE IF EXISTS `device_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_master` (
  `SERIAL_NO` varchar(50) NOT NULL,
  `COMMENTS` varchar(300) DEFAULT NULL,
  `COM_PORT` int(11) DEFAULT NULL,
  `DATA_RATE` int(11) DEFAULT NULL,
  PRIMARY KEY (`SERIAL_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_master`
--

LOCK TABLES `device_master` WRITE;
/*!40000 ALTER TABLE `device_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slno_hr_r`
--

DROP TABLE IF EXISTS `slno_hr_r`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slno_hr_r` (
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Ch1Alpha0` float DEFAULT NULL,
  `Ch1_Beta0` float DEFAULT NULL,
  `Ch2Alpha0` float DEFAULT NULL,
  `Ch2Beta0` float DEFAULT NULL,
  `a0` float DEFAULT NULL,
  `a1` float DEFAULT NULL,
  `a2` float DEFAULT NULL,
  `a3` float DEFAULT NULL,
  `coeff_d` float DEFAULT NULL,
  `a5` float DEFAULT NULL,
  `a6` float DEFAULT NULL,
  `ModBus_MatTemp` float DEFAULT NULL,
  `PLL Freq1` float DEFAULT NULL,
  `PLL Freq2` float DEFAULT NULL,
  `Average_time_zero` float DEFAULT NULL,
  `Normal_Avg_time` float DEFAULT NULL,
  `Det_Avg_time` float DEFAULT NULL,
  `Temp_sel` int(11) DEFAULT NULL,
  `Mval_sel` int(11) DEFAULT NULL,
  `Ch1_A_Gain` int(11) DEFAULT NULL,
  `Ch1_RF_Gain` int(11) DEFAULT NULL,
  `Mode` int(11) DEFAULT NULL,
  `P` float DEFAULT NULL,
  `I` float DEFAULT NULL,
  `D` float DEFAULT NULL,
  `Int_temp_setpoint` float DEFAULT NULL,
  `Blink_Range_max` float DEFAULT NULL,
  `Blink_range_min` float DEFAULT NULL,
  `Mat_temp_min` float DEFAULT NULL,
  `Mat_temp_Max` float DEFAULT NULL,
  `Ch2_A_Gain` int(11) DEFAULT NULL,
  `CH2_RF_Gain` int(11) DEFAULT NULL,
  `Proxi_Enable` int(11) DEFAULT NULL,
  `TempCont_Enable` int(11) DEFAULT NULL,
  `Iout_Calib_5 mA` float DEFAULT NULL,
  `Iout_Calib_19 mA` float DEFAULT NULL,
  `S1` float DEFAULT NULL,
  `S2` float DEFAULT NULL,
  `n1` int(11) DEFAULT NULL,
  `n2` int(11) DEFAULT NULL,
  `spare` int(11) DEFAULT NULL,
  `Rho` float DEFAULT NULL,
  `a8` float DEFAULT NULL,
  `Iz_2` float DEFAULT NULL,
  `Iz1_2` float DEFAULT NULL,
  `Iz2_2` float DEFAULT NULL,
  `Qz_2` float DEFAULT NULL,
  `Qz1_2` float DEFAULT NULL,
  `Qz2_2` float DEFAULT NULL,
  PRIMARY KEY (`Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slno_hr_r`
--

LOCK TABLES `slno_hr_r` WRITE;
/*!40000 ALTER TABLE `slno_hr_r` DISABLE KEYS */;
/*!40000 ALTER TABLE `slno_hr_r` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slno_hr_w`
--

DROP TABLE IF EXISTS `slno_hr_w`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slno_hr_w` (
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Ch1Alpha0` float DEFAULT NULL,
  `Ch1Beta0` float DEFAULT NULL,
  `Ch2Alpha0` float DEFAULT NULL,
  `Ch2Beta0` float DEFAULT NULL,
  `a0` float DEFAULT NULL,
  `a1` float DEFAULT NULL,
  `a2` float DEFAULT NULL,
  `a3` float DEFAULT NULL,
  `coeff_d` float DEFAULT NULL,
  `a5` float DEFAULT NULL,
  `a6` float DEFAULT NULL,
  `ModBus_MatTemp` float DEFAULT NULL,
  `PLL Freq1` float DEFAULT NULL,
  `PLL Freq2` float DEFAULT NULL,
  `Average time zero` float DEFAULT NULL,
  `Normal Avg time` float DEFAULT NULL,
  `Det Avg time` float DEFAULT NULL,
  `Temp_sel` int(11) DEFAULT NULL,
  `Mval_sel` int(11) DEFAULT NULL,
  `Ch1_A_Gain` int(11) DEFAULT NULL,
  `Ch1_RF_Gain` int(11) DEFAULT NULL,
  `Mode` int(11) DEFAULT NULL,
  `P` float DEFAULT NULL,
  `I` float DEFAULT NULL,
  `D` float DEFAULT NULL,
  `Int_temp_setpoint` float DEFAULT NULL,
  `Blink_Range_max` float DEFAULT NULL,
  `Blink_range_min` float DEFAULT NULL,
  `Mat_temp_min` float DEFAULT NULL,
  `Mat_temp_Max` float DEFAULT NULL,
  `Ch2_A_Gain` int(11) DEFAULT NULL,
  `CH2_RF_Gain` int(11) DEFAULT NULL,
  `Proxi_Enable` int(11) DEFAULT NULL,
  `TempCont_Enable` int(11) DEFAULT NULL,
  `Iout Calib_5_mA` float DEFAULT NULL,
  `Iout_Calib_19_mA` float DEFAULT NULL,
  `S1` float DEFAULT NULL,
  `S2` float DEFAULT NULL,
  `n1` int(11) DEFAULT NULL,
  `n2` int(11) DEFAULT NULL,
  `spare` int(11) DEFAULT NULL,
  `Rho` float DEFAULT NULL,
  `a8` float DEFAULT NULL,
  `Iz_2` float DEFAULT NULL,
  `Iz1_2` float DEFAULT NULL,
  `Iz2_2` float DEFAULT NULL,
  `Qz_2` float DEFAULT NULL,
  `Qz1_2` float DEFAULT NULL,
  `Qz2_2` float DEFAULT NULL,
  PRIMARY KEY (`Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slno_hr_w`
--

LOCK TABLES `slno_hr_w` WRITE;
/*!40000 ALTER TABLE `slno_hr_w` DISABLE KEYS */;
/*!40000 ALTER TABLE `slno_hr_w` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slno_ir_r`
--

DROP TABLE IF EXISTS `slno_ir_r`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slno_ir_r` (
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Y0_Dry` float DEFAULT NULL,
  `Y1_Wet` float DEFAULT NULL,
  `Density` float DEFAULT NULL,
  `Mat_Temp` float DEFAULT NULL,
  `A` float DEFAULT NULL,
  `Dphi` float DEFAULT NULL,
  `R` float DEFAULT NULL,
  `Phi` float DEFAULT NULL,
  `R_z` float DEFAULT NULL,
  `Phiz` float DEFAULT NULL,
  `I` float DEFAULT NULL,
  `Q` float DEFAULT NULL,
  `D` float DEFAULT NULL,
  `CalR0` float DEFAULT NULL,
  `Calphi0` float DEFAULT NULL,
  `A1` float DEFAULT NULL,
  `Dphi1` float DEFAULT NULL,
  `R1` float DEFAULT NULL,
  `Phi1` float DEFAULT NULL,
  `R_z1` float DEFAULT NULL,
  `Phiz1` float DEFAULT NULL,
  `I1` float DEFAULT NULL,
  `Q1` float DEFAULT NULL,
  `D1` float DEFAULT NULL,
  `CalR01` float DEFAULT NULL,
  `Calphi01` float DEFAULT NULL,
  `A2` float DEFAULT NULL,
  `Dphi2` float DEFAULT NULL,
  `R2` float DEFAULT NULL,
  `Phi2` float DEFAULT NULL,
  `R_z2` float DEFAULT NULL,
  `Phiz2` float DEFAULT NULL,
  `I2` float DEFAULT NULL,
  `Q2` float DEFAULT NULL,
  `D2` float DEFAULT NULL,
  `CalR02` float DEFAULT NULL,
  `Calphi02` float DEFAULT NULL,
  `empty_flag` int(11) DEFAULT NULL,
  `PLL_lock_flag` int(11) DEFAULT NULL,
  `Remaining_time` int(11) DEFAULT NULL,
  `Temp_PS` float DEFAULT NULL,
  `Temp_CPU` float DEFAULT NULL,
  `Temp_RF` float DEFAULT NULL,
  `H_Dutycycle` float DEFAULT NULL,
  `ADC_Counts_I` bigint(20) DEFAULT NULL,
  `ADC_Counts_Q` bigint(20) DEFAULT NULL,
  `Dz` float DEFAULT NULL,
  `Dz1` float DEFAULT NULL,
  `Dz2` float DEFAULT NULL,
  PRIMARY KEY (`Timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slno_ir_r`
--

LOCK TABLES `slno_ir_r` WRITE;
/*!40000 ALTER TABLE `slno_ir_r` DISABLE KEYS */;
/*!40000 ALTER TABLE `slno_ir_r` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-21  7:53:24
