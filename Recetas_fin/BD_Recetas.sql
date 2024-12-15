-- Tabla Usuarios
CREATE TABLE Usuarios (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Usuario VARCHAR(255) NOT NULL,
    Correo_Electronico VARCHAR(255) NOT NULL UNIQUE,
    Contrasena VARCHAR(255) NOT NULL,
    Fecha_Nacimiento DATETIME
);

-- Tabla Recetas
CREATE TABLE Recetas (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(255) NOT NULL,
    Preparacion TEXT,
    Ingredientes TEXT,
    Fecha_Creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    ID_Usuario INT,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID)
);

-- Tabla Favoritos
CREATE TABLE Favoritos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ID_Receta INT,
    ID_Usuario INT,
    FOREIGN KEY (ID_Receta) REFERENCES Recetas(ID),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID)
);

-- Tabla Votados
CREATE TABLE Votados (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    ID_Receta INT,
    ID_Usuario INT,
    FOREIGN KEY (ID_Receta) REFERENCES Recetas(ID),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID)
);

