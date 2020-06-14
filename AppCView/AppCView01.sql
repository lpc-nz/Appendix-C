USE GuestHouse2020;
GO

CREATE or ALTER VIEW [RoomDescription]
AS
SELECT id, description
FROM room_type;
GO