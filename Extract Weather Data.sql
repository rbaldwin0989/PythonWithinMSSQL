Declare @GetWeatherScript nvarchar(max) = (select Script from dbo.Scripts where Name = N'Get Weather XML')
Declare @Language nvarchar(16) = (select language from dbo.Scripts where name = N'Get Weather XML')

exec sp_execute_external_script 
@language = @Language,
@script=@GetWeatherScript
WITH RESULT SETS ((XMLRESPONSE NVARCHAR(MAX)))