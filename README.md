# Snow Emergency ETL Project
Each winter The City of Minneapolis collects information on Snow Emergencies across the state. The city has made this data public using their Open data platform at [Link](http://opendata.minneapolismn.gov/datasets?t=Snow%20Emergency).

For this project, we focused on Snow Emergency data from 2018. 
In total, there were 3 Snow Emergencies in 2018. Those were named - Howe, Xerxes and Yardville.
The dataset contains two files for snow emergency - Tags(which are citations) and Tows(which are towings).
### System Architecture Design
Based on the datasets, an ETL Specification spreadsheet has been designed to capture the necessary database design information. The spreadsheet can be found at [ETL SpecSheet](https://github.com/rahulughade/SnowEmergency_ETL/blob/rahul/ETL%20Specifications.xlsx).
It defines the source to target mappings for each field including the necessary transformations. There are a total of 8 sheets, 6 of which are ETL specs for open data source files and the remaining 2 are for MySQL ETLs.

	
