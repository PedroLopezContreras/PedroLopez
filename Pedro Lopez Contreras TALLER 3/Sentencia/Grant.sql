SELECT * FROM mysql.user;
grant usage on *.* to medicos identified by '123456';
grant usage on *.* to medicos@localhost identified by '123456';
grant usage on *.* to medicos@192.168.0.2 identified by '123456';
grant select, delete, update, insert on *.* to medico;
grant all privileges on *.* to medicos;
show grants for medicos;
flush privileges;

