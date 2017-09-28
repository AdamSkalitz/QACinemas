EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = N'QAStore'
GO

USE [master]
GO
ALTER DATABASE [QAStore] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO

DROP DATABASE [QAStore]
GO