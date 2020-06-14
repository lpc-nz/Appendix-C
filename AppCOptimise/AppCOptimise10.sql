--AppCOptimise09 - Chung Le
--Before warn for CLUSTERED
--Error if not SELECT TOP(100) PERCENT

USE GuestHouse2020;
GO

SET STATISTICS IO ON
SET STATISTICS TIME ON

CREATE or ALTER VIEW [GuestLiveIn.East]
AS
SELECT TOP (100) PERCENT last_name AS 'Last Name', 
			first_name AS 'First Name',
			 address, 
			 ISNULL(nights, 0) AS 'Nights'
FROM guest g
FULL OUTER JOIN booking b
ON g.id = b.guest_id
WHERE address LIKE '%East%'
ORDER BY last_name, first_name;
GO

CREATE NONCLUSTERED INDEX [IX_guest_id]
ON  [dbo].[guest] ([id]);
GO

--DROP INDEX [IX_guest_id] 
--ON [dbo].[guest];
--GO