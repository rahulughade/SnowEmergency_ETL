# Snow Emergency ETL Project
Each winter The City of Minneapolis collects information on Snow Emergencies across the state. The city has made this data public using their Open data platform at [Link](http://opendata.minneapolismn.gov/datasets?t=Snow%20Emergency).

For this project, we focused on Snow Emergency data from 2018. 
In total, there were 3 Snow Emergencies in 2018. Those were named - Howe, Xerxes and Yardville.
The dataset contains two files for snow emergency - Tags(which are citations) and Tows(which are towings).
### System Architecture Design
Based on the datasets, an ETL Specification spreadsheet has been designed to capture the necessary database design information. The spreadsheet can be found at [ETL SpecSheet](https://github.com/rahulughade/SnowEmergency_ETL/blob/rahul/ETL%20Specifications.xlsx).
It defines the source to target mappings for each field including the necessary transformations. There are a total of 8 sheets, 6 of which are ETL specs for open data source files and the remaining 2 are for MySQL ETLs.
Based on the ETL specification design, database scripts for each of the target tables were created and implemented in MySQL database. The scripts can be found [here](https://github.com/rahulughade/SnowEmergency_ETL/blob/rahul/DBScripts/snow_emergency_db_scripts.sql).
### ETL Design
For each of the 6 open data ETL Specs, ETL code was designed using Jupyter Notebooks. Refer to [SourceCode](https://github.com/rahulughade/SnowEmergency_ETL/tree/rahul/SourceCode) folder for detailed information. 
At the end of each notebook, MySQL connection was opened to push dataframes into MySQL tables.

### Database schema
Remaining 2 ETL Specs - all tags and all tows, are defined for the database schema design. All tags tables are combined using a UNION transformation to get a unified tags table. Similarly, all tows tables are combined to get a unified tows table.

	
