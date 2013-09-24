DROP DATABASE IF EXISTS `geometrics`;
CREATE DATABASE `geometrics`;
USE `geometrics`;

DROP TABLE IF EXISTS `continents`;
CREATE TABLE `continents`(
	`id` int unsigned not null auto_increment primary key,
	`name` varchar(45),
	`code` varchar(2)
);

DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`(
	`id` int unsigned not null auto_increment primary key,
	`serial` varchar(15),
	`name` varchar(100),
	`code` varchar(2),
	`continent_id` int unsigned
);

DROP TABLE IF EXISTS `regions`;
CREATE TABLE `regions`(
	`id` int unsigned not null auto_increment primary key,
	`serial` varchar(15),
	`code` varchar(10),
	`local_code` varchar(10),
	`name` varchar(100),
	`continent_id` int unsigned,
	`country_id` int unsigned
);

DROP TABLE IF EXISTS `airports`;
CREATE TABLE `airports`(
	`id` int unsigned not null auto_increment primary key,
	`serial` varchar(15),
	`identification` varchar(10),
	`airway_type_id` varchar(45),
	`name` varchar(100),
	`latitude` varchar(15),
	`longitude` varchar(15),
	`elevation_feet` varchar(12),
	`continent_id` int unsigned,
	`country_id` int unsigned,
	`region_id` int unsigned,
	`municipality` varchar(45),
	`scheduled_service_id` int not null,
	`gps_code` varchar(10),
	`iata_code` varchar(5),
	`local_code` varchar(5)
	);

DROP TABLE IF EXISTS `airway_types`;
CREATE TABLE `airway_types`(
	`id` int unsigned not null auto_increment primary key,
	`type` varchar(255) not null
);

DROP TABLE IF EXISTS `scheduled_services`
CREATE TABLE `scheduled_services`(
	`id` int unsigned not null auto_increment primary key,
	`value` varchar(5) not null
);


DROP TABLE IF EXISTS `airport_frequencies`;
CREATE TABLE `airport_frequencies`(
	`id` int unsigned not null auto_increment primary key,
	`serial` varchar(15),
	`airport_id` int unsigned,
	`identification` varchar(10),
	`type` varchar(45),
	`description` varchar(45),
	`frequency_mhz` varchar(15)
);
