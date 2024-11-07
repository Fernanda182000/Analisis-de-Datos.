CREATE DATABASE Biblioteca;

USE Biblioteca;
CREATE TABLE Autores (
  ID_Autor INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR (100) NOT NULL,
    Nacionalidad VARCHAR (100),
    Fecha_Nacimiento DATE
    );

USE Biblioteca;
CREATE TABLE Categorías (
  ID_Categoria INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR (100) NOT NULL,
    Categoria VARCHAR (100)
    );
