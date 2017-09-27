EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'QAStores'
GO

USE [master]
GO
ALTER DATABASE [QAStores] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO

DROP DATABASE [QAStores]
GO