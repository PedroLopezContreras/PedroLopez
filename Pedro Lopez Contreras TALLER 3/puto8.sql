CREATE DEFINER=`root`@`localhost` PROCEDURE `pacientes_con_letra`(in letra char)
begin
select*
from pacientes
where pac_nombre like letra;
end