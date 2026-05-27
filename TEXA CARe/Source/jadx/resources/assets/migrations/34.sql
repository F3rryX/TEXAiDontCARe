DROP TABLE IF EXISTS servicedata;
ALTER TABLE Vehicles ADD COLUMN costumer_availability INTEGER;
ALTER TABLE MechanicContact ADD COLUMN primaryContact INTEGER;
ALTER TABLE LampStatus ADD COLUMN filtered INTEGER;