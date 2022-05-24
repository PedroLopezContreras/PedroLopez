START TRANSACTION; 
UPDATE pacientes SET pac_nombres='kevin urbano' WHERE id_Pacientes=12;

SAVEPOINT A;
UPDATE pacientes SET pac_nombres='camilo niño' WHERE id_Pacientes=1;

SAVEPOINT B;
ROLLBACK TO A;

