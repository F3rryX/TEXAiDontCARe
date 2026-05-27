ALTER TABLE Vehicles ADD COLUMN isCurrentVehicle INTEGER;
ALTER TABLE Vehicles ADD COLUMN description TEXT;
ALTER TABLE Vehicles ADD COLUMN nation TEXT;
ALTER TABLE Vehicles ADD COLUMN vin TEXT;
ALTER TABLE Vehicles ADD COLUMN isSelectedVehicle INTEGER;
ALTER TABLE LampStatus ADD COLUMN filtered INTEGER;

UPDATE Vehicles SET isSelectedVehicle = 0;
UPDATE Vehicles set isSelectedVehicle = 1 WHERE Vehicles.hwid = (SELECT Dongle.hwid FROM Dongle WHERE Dongle.SelectDongle = 1);
UPDATE Vehicles SET isCurrentVehicle = 1;
UPDATE Vehicles SET vin = (SELECT Dongle.vinCode FROM Dongle WHERE Vehicles.hwid = Dongle.hwid);