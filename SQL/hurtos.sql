-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: hurtos
-- ------------------------------------------------------
-- Server version	8.0.26

-- crear esquema de nombre hurtos
use hurtos;
DROP TABLE IF EXISTS `dm_tiempo`;
CREATE TABLE `dm_tiempo` (
  `ID_TIEMPO` int NOT NULL,
  `FECHA` date NOT NULL,
  `ANO` int NOT NULL,
  `MES` int NOT NULL,
  `DIA` int NOT NULL,
  PRIMARY KEY (`ID_TIEMPO`),
  UNIQUE KEY `FECHA` (`FECHA`)
);

--
-- Dumping data for table `dm_tiempo`
--



--
-- Table structure for table `dm_ubicacion`
DROP TABLE IF EXISTS `dm_ubicacion`;
CREATE TABLE `dm_ubicacion` (
  `ID_UBICACION` int NOT NULL AUTO_INCREMENT,
  `CODIGO_DANE` varchar(10) NOT NULL,
  `DEPARTAMENTO` varchar(100) NOT NULL,
  `MUNICIPIO` varchar(100) NOT NULL,
  `ZONA` varchar(100) NOT NULL,
  `BARRIO` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_UBICACION`)
);
--
-- Dumping data for table `dm_ubicacion`
--
--
-- Table structure for table `dm_vehiculos`
--
CREATE TABLE `dm_vehiculos` (
  `ID_VEHICULO` int NOT NULL AUTO_INCREMENT,
  `MARCA` varchar(100) NOT NULL,
  `CLASE` varchar(100) NOT NULL,
  `LINEA` varchar(100) NOT NULL,
  `MODELO` varchar(100) NOT NULL,
  `COLOR` varchar(100) NOT NULL,
  `CODIGO_DANE` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_VEHICULO`)
) ;
--
-- Dumping data for table `dm_vehiculos`
--
--
-- Table structure for table `hechos_hurto_automoviles`
--
CREATE TABLE `hechos_hurto_automoviles` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIEMPO_ID` int NOT NULL,
  `UBICACION_ID` int NOT NULL,
  `VEHICULO_ID` int DEFAULT NULL,
  `HURTOS` int NOT NULL,
  PRIMARY KEY (`ID`)
) ;

--
-- Dumping data for table `hechos_hurto_automoviles`
--
--
-- Table structure for table `stg1_tiempo`
--
CREATE TABLE `stg1_tiempo` (
  `ID_TIEMPO` varchar(255) DEFAULT NULL,
  `FECHA` varchar(255) DEFAULT NULL,
  `ANO` varchar(255) DEFAULT NULL,
  `MES` varchar(255) DEFAULT NULL,
  `DIA` varchar(255) DEFAULT NULL
) ;
--
-- Dumping data for table `stg1_tiempo`
--
--
-- Table structure for table `stg1_ubicacion`
--
CREATE TABLE `stg1_ubicacion` (
  `CODIGO_DANE` varchar(10) DEFAULT NULL,
  `DEPARTAMENTO` varchar(100) DEFAULT NULL,
  `MUNICIPIO` varchar(100) DEFAULT NULL,
  `ZONA` varchar(100) DEFAULT NULL,
  `BARRIO` varchar(100) DEFAULT NULL
) ;

--
-- Dumping data for table `stg1_ubicacion`
--


--
-- Table structure for table `stg1_vehiculos`
--

CREATE TABLE `stg1_vehiculos` (
  `MARCA` varchar(100) DEFAULT NULL,
  `LINEA` varchar(100) DEFAULT NULL,
  `CLASE` varchar(255) DEFAULT NULL,
  `MODELO` varchar(255) DEFAULT NULL,
  `COLOR` varchar(255) DEFAULT NULL,
  `CODIGO_DANE` varchar(100) DEFAULT NULL
);

--
-- Dumping data for table `stg1_vehiculos`
--


--
-- Table structure for table `stg2_tiempo`
--

CREATE TABLE `stg2_tiempo` (
  `ID_TIEMPO` int NOT NULL,
  `FECHA` date NOT NULL,
  `ANO` int NOT NULL,
  `MES` int NOT NULL,
  `DIA` int NOT NULL
) ;

--
-- Dumping data for table `stg2_tiempo`
--

--
-- Table structure for table `stg2_ubicacion`
--

CREATE TABLE `stg2_ubicacion` (
  `CODIGO_DANE` varchar(10) DEFAULT NULL,
  `DEPARTAMENTO` varchar(100) DEFAULT NULL,
  `MUNICIPIO` varchar(100) DEFAULT NULL,
  `ZONA` varchar(100) DEFAULT NULL,
  `BARRIO` varchar(100) DEFAULT NULL
) ;
--
-- Dumping data for table `stg2_ubicacion`
--


--
-- Table structure for table `stg2_vehiculos`
--

CREATE TABLE `stg2_vehiculos` (
  `MARCA` varchar(100) NOT NULL,
  `LINEA` varchar(100) NOT NULL,
  `CLASE` varchar(255) NOT NULL,
  `MODELO` varchar(255) NOT NULL,
  `COLOR` varchar(255) NOT NULL,
  `CODIGO_DANE` varchar(100) DEFAULT NULL
);

--
-- Dumping data for table `stg2_vehiculos`
--


--
-- Table structure for table `stg3_tiempo`
--

CREATE TABLE `stg3_tiempo` (
  `ID_TIEMPO` int NOT NULL,
  `FECHA` date NOT NULL,
  `ANO` int NOT NULL,
  `MES` int NOT NULL,
  `DIA` int NOT NULL
) ;

--
-- Dumping data for table `stg3_tiempo`
--


--
-- Table structure for table `stg3_ubicacion`
--

CREATE TABLE `stg3_ubicacion` (
  `CODIGO_DANE` varchar(10) DEFAULT NULL,
  `DEPARTAMENTO` varchar(100) DEFAULT NULL,
  `MUNICIPIO` varchar(100) DEFAULT NULL,
  `ZONA` varchar(100) DEFAULT NULL,
  `BARRIO` varchar(100) DEFAULT NULL
) ;

--
-- Dumping data for table `stg3_ubicacion`
--


-- Table structure for table `stg3_vehiculos`
--

CREATE TABLE `stg3_vehiculos` (
  `MARCA` varchar(100) NOT NULL,
  `LINEA` varchar(100) NOT NULL,
  `CLASE` varchar(255) NOT NULL,
  `MODELO` varchar(255) NOT NULL,
  `COLOR` varchar(255) NOT NULL,
  `CODIGO_DANE` varchar(100) DEFAULT NULL
);

--
-- Dumping data for table `stg3_vehiculos`
--


-- Dump completed on 2022-03-09 21:02:36
