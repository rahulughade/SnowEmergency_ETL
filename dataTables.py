import pandas as pd
import numpy as np
import sqlalchemy

df = pd.read_csv('DataSet/Tows/' + 'Snow_Emergency_Howe_Tows_2018.csv')

df = df.drop(['X','Y','Tow_Reason'], axis=1)

df.columns = ['FID',
            'service_date',
            'address',
            'latitude',
            'longitude',
            'ward',
            'community',
            'neighborhood',
            'tow_district',
            'day_id',
            'snow_emergency_name']

df['service_date']=pd.to_datetime(df['service_date'].astype(str).str[:10])

# Import dataframe into MySQL
database_username = 'root'
database_password = 'password'
database_ip       = 'localhost:3306'
database_name     = 'snow_emergency_db'
database_connection = sqlalchemy.create_engine('mysql+mysqlconnector://{0}:{1}@{2}/{3}'.
                                               format(database_username, database_password,
                                                      database_ip, database_name))

df.to_sql(con=database_connection, name='howe_tows_base', if_exists='append', index=False)

print(df.head())
