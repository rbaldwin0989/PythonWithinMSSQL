exec sp_execute_external_script 
@language =N'Python',
@script=N'import urllib.request
response = urllib.request.urlopen(''https://forecast.weather.gov/MapClick.php?lat=38.5873&lon=-89.9087&unit=0&lg=english&FcstType=dwml'')
Message["XML"] = response.read()
OutputDataSet = Message
' 