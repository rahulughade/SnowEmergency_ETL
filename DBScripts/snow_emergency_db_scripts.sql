create database snow_emergency_db;

use snow_emergency_db;
/*Base tables*/
CREATE TABLE howe_tags_base 
(FID	INT,
snow_emergency_name	VARCHAR(64),
citation	BIGINT,
service_date	DATETIME,
address	VARCHAR(255),
latitude	DECIMAL(10,3),
longitude	DECIMAL(10,3),
day_id	TINYINT,
ordinance_id	VARCHAR(64),
ordinance_desc	VARCHAR(64),
ward	TINYINT,
neighborhood	VARCHAR(64),
community	VARCHAR(64),
tow_district	TINYINT);

CREATE TABLE xerxes_tags_base 
(FID	INT,
snow_emergency_name	VARCHAR(64),
citation	BIGINT,
service_date	DATETIME,
address	VARCHAR(255),
latitude	DECIMAL(10,3),
longitude	DECIMAL(10,3),
day_id	TINYINT,
ordinance_id	VARCHAR(64),
ordinance_desc	VARCHAR(64),
ward	TINYINT,
neighborhood	VARCHAR(64),
community	VARCHAR(64),
tow_district	TINYINT);

CREATE TABLE yardville_tags_base 
(FID	INT,
snow_emergency_name	VARCHAR(64),
citation	BIGINT,
service_date	DATETIME,
address	VARCHAR(255),
latitude	DECIMAL(10,3),
longitude	DECIMAL(10,3),
day_id	TINYINT,
ordinance_id	VARCHAR(64),
ordinance_desc	VARCHAR(64),
ward	TINYINT,
neighborhood	VARCHAR(64),
community	VARCHAR(64),
tow_district	TINYINT);

CREATE TABLE howe_tows_base 
(FID	INT,
snow_emergency_name	VARCHAR(64),
service_date	DATETIME,
address	VARCHAR(255),
latitude	DECIMAL(10,3),
longitude	DECIMAL(10,3),
day_id	TINYINT,
ward	TINYINT,
neighborhood	VARCHAR(64),
community	VARCHAR(64),
tow_district	TINYINT);

CREATE TABLE xerxes_tows_base 
(FID	INT,
snow_emergency_name	VARCHAR(64),
service_date	DATETIME,
address	VARCHAR(255),
latitude	DECIMAL(10,3),
longitude	DECIMAL(10,3),
day_id	TINYINT,
ward	TINYINT,
neighborhood	VARCHAR(64),
community	VARCHAR(64),
tow_district	TINYINT);

CREATE TABLE yardville_tows_base 
(FID	INT,
snow_emergency_name	VARCHAR(64),
service_date	DATETIME,
address	VARCHAR(255),
latitude	DECIMAL(10,3),
longitude	DECIMAL(10,3),
day_id	TINYINT,
ward	TINYINT,
neighborhood	VARCHAR(64),
community	VARCHAR(64),
tow_district	TINYINT);

/*Final tables*/
CREATE TABLE IF NOT EXISTS all_tags 
(ID	INT AUTO_INCREMENT,
snow_emergency_name	VARCHAR(64),
citation	BIGINT NOT NULL,
service_date	DATETIME,
address	VARCHAR(255),
latitude	DECIMAL(10,3),
longitude	DECIMAL(10,3),
day_id	TINYINT,
ordinance_id	VARCHAR(64),
ordinance_desc	VARCHAR(64),
ward	TINYINT,
neighborhood	VARCHAR(64),
community	VARCHAR(64),
tow_district	TINYINT,
PRIMARY KEY (ID));

CREATE TABLE all_tows
(ID	INT AUTO_INCREMENT,
snow_emergency_name	VARCHAR(64),
service_date	DATETIME,
address	VARCHAR(255),
latitude	DECIMAL(10,3),
longitude	DECIMAL(10,3),
day_id	TINYINT,
ward	TINYINT,
neighborhood	VARCHAR(64),
community	VARCHAR(64),
tow_district	TINYINT,
PRIMARY KEY (ID));