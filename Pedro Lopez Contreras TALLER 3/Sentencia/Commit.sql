START TRANSACTION; 
UPDATE pacientes SET Pac_nombres='kevin' WHERE id_Pacientes=5;
COMMIT;

SELECT*FROM citasmedicas.pacientes; 