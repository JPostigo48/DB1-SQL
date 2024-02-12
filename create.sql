DROP DATABASE IF EXISTS proyectofinal;
CREATE DATABASE proyectofinal;

USE proyectofinal;

DROP TABLE IF EXISTS Seguro;
CREATE TABLE Seguro (
    seguroID INTEGER,
    nombre VARCHAR(50),
    descripcion VARCHAR(200),
    fechaCreacion DATE,
    cobertura VARCHAR(50),
    PRIMARY KEY(seguroID)
);

DROP TABLE IF EXISTS ObjetoAsegurado;
CREATE TABLE ObjetoAsegurado (
    objetoID INTEGER AUTO_INCREMENT,
    nombre VARCHAR(50),
    tipo VARCHAR(50),
    valor DECIMAL(10,2),
    descripcion VARCHAR(200),
    ubicacion VARCHAR(100),
    seguroID INTEGER, 
    PRIMARY KEY(objetoID)
);

DROP TABLE IF EXISTS Poliza;
CREATE TABLE Poliza (
    polizaID INTEGER AUTO_INCREMENT,
    fechaPoliza DATE,
    fechaInicio DATE,
    fechaVencimiento DATE,
    prima DECIMAL (10,2),
	montoCobertura DECIMAL(10,2),
    objetoID INTEGER,
    PRIMARY KEY(polizaID, objetoID)
);


DROP TABLE IF EXISTS BaseLegal;
CREATE TABLE BaseLegal (
    baseLegalID INTEGER,
    titulo VARCHAR(50),
    tipo VARCHAR(50),
    fechaPromulgacion DATE,
    descripcion VARCHAR(200),
    seguroID INTEGER,
    PRIMARY KEY(baseLegalID)
);

DROP TABLE IF EXISTS Empleado;
CREATE TABLE Empleado (
    empleadoID INTEGER,
    nombre VARCHAR(50),
    apellidoPaterno VARCHAR(50),
    apellidoMaterno VARCHAR(50),
    fechaNacimiento DATE,
    genero VARCHAR(20),
    estadoCivil VARCHAR(20),
    fechaContratacion DATE,
    direccion VARCHAR(100),
    salario DECIMAL(10,2),
    PRIMARY KEY(empleadoID)
);

DROP TABLE IF EXISTS Vendedor;
CREATE TABLE Vendedor (
    empleadoID INTEGER,
    contrasena VARCHAR(20),
    PRIMARY KEY(empleadoID)
);

DROP TABLE IF EXISTS ListaContactosVendedor;
CREATE TABLE ListaContactosVendedor (
    empleadoID INTEGER,
    contacto VARCHAR(50),
    PRIMARY KEY(empleadoID, contacto)
);

DROP TABLE IF EXISTS Cliente;
CREATE TABLE Cliente (
    clienteID INTEGER,
    nombre VARCHAR(50),
    apellidoPaterno VARCHAR(50),
    apellidoMaterno VARCHAR(50),
    fechaNacimiento DATE,
    genero VARCHAR(20),
    estadoCivil VARCHAR(20),
    direccion VARCHAR(100),
    PRIMARY KEY(clienteID)
);

DROP TABLE IF EXISTS ClienteTelefono;
CREATE TABLE ClienteTelefono (
    clienteID INTEGER,
    telefono INTEGER,
    PRIMARY KEY(clienteID, telefono)
);

DROP TABLE IF EXISTS CompraSeguro;
CREATE TABLE CompraSeguro (
    clienteID INTEGER,
    seguroID INTEGER,
    polizaID INTEGER,
    metodoPago VARCHAR(50),
    PRIMARY KEY(clienteID, seguroID, polizaID)
);

DROP TABLE IF EXISTS Asesor;
CREATE TABLE Asesor (
    empleadoID INTEGER,
    email VARCHAR(50),
    certificacion TEXT,
    PRIMARY KEY(empleadoID)
);

DROP TABLE IF EXISTS EvaluadorDeRiesgo;
CREATE TABLE EvaluadorDeRiesgo (
    empleadoID INTEGER,
    experiencia INTEGER,
    PRIMARY KEY(EmpleadoID)
);

DROP TABLE IF EXISTS Beneficiario;
CREATE TABLE Beneficiario (
    beneficiarioID INTEGER,
    fechaNacimiento DATE,
    estadoCivil VARCHAR(50),
	ocupacion VARCHAR(50),
    relacion VARCHAR(50),
    clienteID INTEGER,
    PRIMARY KEY(beneficiarioID, clienteID)
);

DROP TABLE IF EXISTS Robo;
CREATE TABLE Robo (
    roboID INTEGER,
    tipo VARCHAR(50),
    lugar VARCHAR(50),
    fechaRobo DATE,
	reportePolicial TEXT,
    descripcion TEXT,
    objetoID INTEGER,
    PRIMARY KEY(roboID, objetoID)
);

DROP TABLE IF EXISTS Reclamo;
CREATE TABLE Reclamo (
    reclamoID INTEGER,
    motivo VARCHAR(50),
    lugar VARCHAR(50),
    fechaReclamo DATE,
    descripcion TEXT,
    clienteID INTEGER,
    PRIMARY KEY(reclamoID)
);

DROP TABLE IF EXISTS AnalisisRiesgo;
CREATE TABLE AnalisisRiesgo (
    analisisRiesgoID INTEGER,
    descripcion TEXT,
    calificacion VARCHAR(30),
    empleadoID INTEGER,
    objetoID INTEGER,
    PRIMARY KEY(analisisRiesgoID)
);

DROP TABLE IF EXISTS Publicidad;
CREATE TABLE Publicidad (
    publicidadID INTEGER,
    medio VARCHAR(40),
    costo DECIMAL(10,2),
    PRIMARY KEY(publicidadID)
);

DROP TABLE IF EXISTS PublicidadSeguro;
CREATE TABLE PublicidadSeguro (
    publicidadID INTEGER,
    seguroID INTEGER,
    PRIMARY KEY(publicidadID, seguroID)
);

ALTER TABLE ObjetoAsegurado ADD FOREIGN KEY (seguroID) REFERENCES Seguro(seguroID);
ALTER TABLE Vendedor ADD FOREIGN KEY (empleadoID) REFERENCES Empleado(empleadoID);
ALTER TABLE ListaContactosVendedor ADD FOREIGN KEY (empleadoID) REFERENCES Vendedor(empleadoID);
ALTER TABLE ClienteTelefono ADD FOREIGN KEY (clienteID) REFERENCES Cliente(clienteID);
ALTER TABLE CompraSeguro ADD FOREIGN KEY (clienteID) REFERENCES Cliente(clienteID);
ALTER TABLE CompraSeguro ADD FOREIGN KEY (seguroID) REFERENCES Seguro(seguroID);
ALTER TABLE CompraSeguro ADD FOREIGN KEY (polizaID) REFERENCES Poliza(polizaID);
ALTER TABLE BaseLegal ADD FOREIGN KEY (seguroID) REFERENCES Seguro(seguroID);

ALTER TABLE Poliza ADD FOREIGN KEY (objetoID) REFERENCES ObjetoAsegurado(objetoID);
ALTER TABLE Asesor ADD FOREIGN KEY (empleadoID) REFERENCES Empleado(empleadoID);
ALTER TABLE EvaluadorDeRiesgo ADD FOREIGN KEY (empleadoID) REFERENCES Empleado(empleadoID);
ALTER TABLE Beneficiario ADD FOREIGN KEY Cliente(clienteID) REFERENCES Cliente(clienteID);
ALTER TABLE Robo ADD FOREIGN KEY ObjetoAsegurado(objetoID) REFERENCES ObjetoAsegurado(objetoID);
ALTER TABLE Reclamo ADD FOREIGN KEY (clienteID) REFERENCES Cliente(clienteID);
ALTER TABLE AnalisisRiesgo ADD FOREIGN KEY (objetoID) REFERENCES ObjetoAsegurado(objetoID);
ALTER TABLE AnalisisRiesgo ADD FOREIGN KEY (empleadoID) REFERENCES EvaluadorDeRiesgo(empleadoID);
ALTER TABLE PublicidadSeguro ADD FOREIGN KEY (publicidadID) REFERENCES Publicidad(publicidadID);
ALTER TABLE PublicidadSeguro ADD FOREIGN KEY (seguroID) REFERENCES Seguro(seguroID);
