exec sp_execute_external_script 
@language =N'Python',
@script=N'
import urllib.request
import pandas as pd
ResponseDecoded = []
response = urllib.request.urlopen(''https://forecast.weather.gov/MapClick.php?lat=38.5873&lon=-89.9087&unit=0&lg=english&FcstType=dwml'')
ReponseRead = response.read()
ResponseDecoded.append(ReponseRead.decode("ISO-8859-1"))
test = pd.DataFrame(data = ResponseDecoded)
OutputDataSet = test' 
WITH RESULT SETS ((XMLRESPONSE NVARCHAR(MAX)))