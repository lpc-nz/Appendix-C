--AppCOptimise01-ChungLe
--Before
--Using SELECT * FROM
USE GuestHouse2020;
GO

SET STATISTICS IO ON
SET STATISTICS TIME ON

CREATE or ALTER VIEW [dbo].[RoomDescription]
AS
SELECT id, description
FROM room_type;