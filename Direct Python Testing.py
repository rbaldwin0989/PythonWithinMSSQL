#import urllib.request
#response = urllib.request.urlopen('https://forecast.weather.gov/MapClick.php?lat=38.5873&lon=-89.9087&unit=0&lg=english&FcstType=dwml')
###OutputDataSet = response.read()
##print(response.read())
#data = response.read()
#test = data.decode("ISO-8859-1")
#OutputDataSet = test
import random
import pandas as pd
t=[]
for i in range(0,10):
    t.append(random.random())
tDF = pd.DataFrame(data=t)
newnames={0:"Random"}
tDF.rename(columns=newnames, inplace=True)
print(tDF)
OutputDataSet=tDF