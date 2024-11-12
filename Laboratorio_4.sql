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

USE Biblioteca;
INSERT INTO autores (Nombre, Nacionalidad, Fecha_Nacimiento)
VALUES ('Gabriel García Márquez', 'Colombiano',' 1927-03-06'),
('J.K. Rowling',' Británica','1965-07-31'),
('George Orwell','Británica','1903-06-25');

INSERT INTO categorias (Nombre_Categoria)
VALUES ('Novela'),
('Ciencia Ficción'), 
('Fantasía'),
('Ensayo');

USE Biblioteca;
INSERT INTO libros (Titulo, ID_Autor, ID_Categoria, Año_Publicacion)
VALUES ('Cien Años de Soledad','1','1','1967'),
('Harry Potter y la Piedra Filosofal','2','3','1997'),
('La  era de 1984','3','2','1949'); 


INSERT INTO usuarios (Nombre, Direccion, Telefono)
VALUES ('Carlos Martínez','Calle Luna, 123','123456789'),
('Lucía Fernández','Avenida Sol, 456','987654321'); 


INSERT INTO prestamos (ID_Usuario, ID_Libro, Fecha_Prestamo, Fecha_Devolucion)
VALUES ('1','1','2024-08-01','2024-08-15'), 
('2','2','2024-08-02','2024-08-16');


USE Biblioteca;
CREATE TABLE prestamos_usuarios (
    ID_Relacion INT PRIMARY KEY AUTO_INCREMENT,
    ID_Prestamo INT NOT NULL,
    ID_Usuario INT NOT NULL,
    FOREIGN KEY (ID_Prestamo) REFERENCES prestamos (ID_Prestamo),
    FOREIGN KEY (ID_Usuario) REFERENCES usuarios (ID_Usuario)   
    );

USE Biblioteca;
UPDATE prestamos
SET Fecha_Devolucion = ' 2024-11-12'
WHERE ID_Prestamo = 1; 
