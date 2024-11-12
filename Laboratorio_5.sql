CREATE DATABASE empresa

USE empresa;
CREATE TABLE Empleados (
    ID_Empl INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR (100) NOT NULL,
    Cargo VARCHAR (50),
    Salario DECIMAL (10,2)
    );
    
    USE empresa;
CREATE TABLE Cargo (
    ID_Cargo INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_cargo VARCHAR (50) NOT NULL,
    Salario DECIMAL (10, 2)
    );

USE empresa;
INSERT INTO empleados (nombre, cargo, salario) VALUES ('Juan Pérez', 'Gerente', '7500000');
INSERT INTO empleados (nombre, cargo, salario) VALUES ('Ana Gómez', 'Desarrollador', '6000000');
INSERT INTO empleados (nombre, cargo, salario) VALUES ('Luis Castro', 'Proyectos', '10000000');

USE empresa;
INSERT INTO cargo (nombre_cargo, salario) VALUES ('Gerente', '500000');
INSERT INTO cargo (nombre_cargo, salario) VALUES ('Asistente', '250000');
INSERT INTO cargo (nombre_cargo, salario) VALUES ('Desarrollador','400000');

SELECT * FROM `empleados`;

USE empresa;
SELECT * FROM cargo;

USE empresa;
SELECT * FROM empleados WHERE Salario > 7000000; 

USE empresa;
UPDATE empleados
SET Salario = 6500000
WHERE Nombre = 'Ana Gómez';

USE empresa;
DELETE FROM empleados WHERE Nombre = 'Luis Castro';

USE empresa;
SELECT * FROM empleados WHERE cargo = 'Desarrollador';

USE empresa;
INSERT INTO empleados (nombre, cargo, salario) 
VALUES ('Marta López','Asistente', '3000000');
