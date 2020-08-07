CREATE TABLE [dbo].[Scripts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Script] [nvarchar](max) NULL,
	[Language] [nvarchar](16) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[XML_Stage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Result] [nvarchar](max) NULL,
	[RetrievedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

insert into dbo.Scripts
values ('Get Weather XML',N'
import urllib.request
import pandas as pd
ResponseDecoded = []
response = urllib.request.urlopen(''https://forecast.weather.gov/MapClick.php?lat=38.5873&lon=-89.9087&unit=0&lg=english&FcstType=dwml'')
ReponseRead = response.read()
ResponseDecoded.append(ReponseRead.decode("ISO-8859-1"))
test = pd.DataFrame(data = ResponseDecoded)
OutputDataSet = test' , 'Python')