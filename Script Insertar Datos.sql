
USE DB_HOTEL

GO

insert into ESTADO_HABITACION(IdEstadoHabitacion,Descripcion) values
(1,'DISPONIBLE'),
(2,'OCUPADO')


go

insert into TIPO_PERSONA(IdTipoPersona, Descripcion) values
(1,'Administrador'),
(2,'Empleado'),
(3,'Cliente')

go


insert into PERSONA(documento,nombre,apellido,correo,clave,IdTipoPersona) values
('108566207','Raul','Bolaños','rauleduardo1992@hotmail.com','123',1)

GO

insert into PERSONA(TipoDocumento,documento,nombre,apellido,correo,IdTipoPersona) values
('CC','1085662057','Raul','Bolaños','RaulEduardo1992@hotmail.com',3),
('CC','34534359','Nidia','Realpe','Nidia123@gmail.com',3),
('CC','87245725','Eduardo','Mosquera','Eduardo@gmail.com',3),
('CC','1107105484','Yurany','Vico','Yurany@gmail.com',3),
('CC','123456785','Victor','Burbano','Victor@gmail.com',3)


GO
INSERT INTO CATEGORIA(Descripcion) VALUES
('Individual'),
('Doble')
GO

INSERT INTO PISO(Descripcion) VALUES
('PRIMERO'),
('SEGUNDO'),
('TERCERO')

GO


INSERT INTO Hotel(Nombre,Estado,FechaCreacion) values
('Intercontinental',1,'2023-12-21'),
('Centro Plaza ',1,'2023-12-21'),
('Brisas del Mayo ',1,'2023-12-21'),
('Araditas ',1,'2023-12-21'),
('Noches Club ',1,'2023-12-21')



INSERT INTO HABITACION(numero,detalle,precio,IdEstadoHabitacion,IdPiso,IdCategoria,IdHotel) values
('1','INTERNET + BAÑO + NETFLIX ','70000',1,1,1,1),
('2','INTERNET + BAÑO + NETFLIX + DESAYUNO','8000',1,1,2,2),
('3','BAÑO  + DESAYUNO','60000',1,1,1,3),
('4','INTERNET + BAÑO  + DESAYUNO','65000',1,1,2,4),
('5','INTERNET + BAÑO','50000',1,1,1,5)

GO

