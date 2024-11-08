CREATE DATABASE Biblioteca;

USE Biblioteca;
CREATE TABLE Autores (
  ID_Autor INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR (100) NOT NULL,
    Nacionalidad VARCHAR (100),
    Fecha_Nacimiento DATE
    );

USE Biblioteca;
CREATE TABLE Categorias (
    ID_Categoria INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Categoria VARCHAR (100) NOT NULL
    );

USE Biblioteca;
CREATE TABLE Libros (
  ID_Libro INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR (100) NOT NULL,
    ID_Autor INT,
    ID_Categoria INT, 
    Año_Publicacion INT,
    Disponible BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (ID_Autor) REFERENCES autores (ID_Autor),
    FOREIGN KEY (ID_Categoria) REFERENCES categorias (ID_Categoria)
    );

USE Biblioteca;
CREATE TABLE Usuarios (
  ID_Usuario INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR (100) NOT NULL,
    Direccion VARCHAR (100),
    Telefono VARCHAR (20)
    );

USE Biblioteca;
CREATE TABLE Prestamos (
  ID_Prestamo INT PRIMARY KEY AUTO_INCREMENT,
    ID_Usuario INT,
    ID_Libro INT,
    Fecha_Prestamo DATE,
    Fecha_Devolucion DATE,
    FOREIGN KEY (ID_Usuario) REFERENCES usuarios (ID_Usuario),
    FOREIGN KEY (ID_Libro) REFERENCES libros (ID_libro)
    );
