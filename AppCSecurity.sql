USE [master]
GO

--Create SQL Sever Login User
CREATE LOGIN [GuestHouse2020.Sale] WITH PASSWORD=N'123456', 
DEFAULT_DATABASE=[GuestHouse2020],
DEFAULT_LANGUAGE=[us_english], 
CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
use [GuestHouse2020]

GO
use [master]
GO
USE [GuestHouse2020]
GO

--Create User
CREATE USER [GuestHouse2020.Sale] FOR LOGIN [GestHouse2020.Sale]
GO



