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
