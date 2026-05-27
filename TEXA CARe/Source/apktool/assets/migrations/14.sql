ALTER TABLE Dongle ADD COLUMN SelectDongle INTEGER;
UPDATE Dongle SET SelectDongle = 1 WHERE LastConnection = (SELECT LastConnection FROM Dongle ORDER BY LastConnection DESC LIMIT 1);