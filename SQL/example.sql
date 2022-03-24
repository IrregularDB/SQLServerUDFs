EXEC sp_configure 'show advanced options', 1;
RECONFIGURE;

EXEC sp_configure 'clr strict security', 0;
RECONFIGURE;

EXEC sp_configure 'clr enabled', 1;  
RECONFIGURE;  
GO  

drop function dbo.SqlFunction1;
drop assembly firstUdf;
CREATE ASSEMBLY FirstUdf FROM 'C:\Users\Kenneth\source\repos\ClassLibrary1\Database1\bin\Debug\Database1.dll';  
GO  
  
CREATE FUNCTION dbo.SqlFunction1 (@input int) RETURNS INT   
AS EXTERNAL NAME FirstUdf.UserDefinedFunctions.SqlFunction1;   
GO  
  

SELECT dbo.SqlFunction1(1)
GO  