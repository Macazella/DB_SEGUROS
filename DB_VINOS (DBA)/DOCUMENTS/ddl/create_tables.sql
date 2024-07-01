-- Tabla Categoría 

CREATE TABLE Categoria ( 

    CodCat NUMBER PRIMARY KEY, 

    Descripcion VARCHAR2(100) 

); 

  

-- Tabla Productor 

CREATE TABLE Productor ( 

    CodProd NUMBER PRIMARY KEY, 

    Nombre VARCHAR2(100), 

    Telefono VARCHAR2(15), 

    Email VARCHAR2(100) 

); 

  

-- Tabla Tomador 

CREATE TABLE Tomador ( 

    CodTomador NUMBER PRIMARY KEY, 

    Nombre VARCHAR2(100), 

    Direccion VARCHAR2(200), 

    Telefono VARCHAR2(15), 

    Email VARCHAR2(100) 

); 

  

-- Tabla Beneficiario 

CREATE TABLE Beneficiario ( 

    CodBenef NUMBER PRIMARY KEY, 

    Nombre VARCHAR2(100), 

    Direccion VARCHAR2(200), 

    Telefono VARCHAR2(15), 

    Email VARCHAR2(100) 

); 

  

-- Tabla Bien 

CREATE TABLE Bien ( 

    CodBien NUMBER PRIMARY KEY, 

    Descripcion VARCHAR2(200), 

    Valor NUMBER 

); 

  

-- Tabla Póliza 

CREATE TABLE Poliza ( 

    CodPoliza NUMBER PRIMARY KEY, 

    FechaEmision DATE, 

    CodCat NUMBER, 

    CodProd NUMBER, 

    CodTomador NUMBER, 

    Estado VARCHAR2(20), 

    FechaConfirmacion DATE, 

    CONSTRAINT fk_CodCat FOREIGN KEY (CodCat) REFERENCES Categoria (CodCat), 

    CONSTRAINT fk_CodProd FOREIGN KEY (CodProd) REFERENCES Productor (CodProd), 

    CONSTRAINT fk_CodTomador FOREIGN KEY (CodTomador) REFERENCES Tomador (CodTomador) 

); 

  

-- Tabla Póliza_Beneficiario 

CREATE TABLE Poliza_Beneficiario ( 

    CodPoliza NUMBER, 

    CodBenef NUMBER, 

    CONSTRAINT pk_Poliza_Beneficiario PRIMARY KEY (CodPoliza, CodBenef), 

    CONSTRAINT fk_Poliza FOREIGN KEY (CodPoliza) REFERENCES Poliza (CodPoliza), 

    CONSTRAINT fk_Beneficiario FOREIGN KEY (CodBenef) REFERENCES Beneficiario (CodBenef) 

); 

  

-- Tabla Póliza_Bien 

CREATE TABLE Poliza_Bien ( 

    CodPoliza NUMBER, 

    CodBien NUMBER, 

    CONSTRAINT pk_Poliza_Bien PRIMARY KEY (CodPoliza, CodBien), 

    CONSTRAINT fk_Poliza FOREIGN KEY (CodPoliza) REFERENCES Poliza (CodPoliza), 

    CONSTRAINT fk_Bien FOREIGN KEY (CodBien) REFERENCES Bien (CodBien) 

); 