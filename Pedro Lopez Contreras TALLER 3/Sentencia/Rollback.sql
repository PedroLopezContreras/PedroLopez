START TRANSACTION; 
delete from pacientes where id_Pacientes=12;
ROLLBACK;

select * From pacientes;
