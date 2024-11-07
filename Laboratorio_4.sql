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

CREATE TABLE Libros (
  ID_Libro INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR (200) NOT NULL,
    ID_Autor VARCHAR (100),
    ID_Categoria INT, 
    Año_Publicacion DATE,
    Disponible VARCHAR (50)
    );
