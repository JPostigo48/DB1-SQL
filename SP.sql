USE proyectofinal;

DELIMITER //

CREATE PROCEDURE InsertarSeguro(
    IN p_seguroID INTEGER,
    IN p_nombre VARCHAR(50),
    IN p_descripcion VARCHAR(200),
    IN p_fechaCreacion DATE,
    IN p_cobertura VARCHAR(50)
)
DETERMINISTIC
BEGIN
    INSERT INTO Seguro (seguroID, nombre, descripcion, fechaCreacion, cobertura)
    VALUES (p_seguroID, p_nombre, p_descripcion, p_fechaCreacion, p_cobertura);
END //

DELIMITER ;



DELIMITER //

CREATE PROCEDURE InsertarCliente(
	IN p_clienteID INTEGER,
    IN p_nombre VARCHAR(50),
    IN p_apellidoPaterno VARCHAR(50),
    IN p_apellidoMaterno VARCHAR(50),
    IN p_fechaNacimiento DATE,
    IN p_genero VARCHAR(20),
    IN p_estadoCivil VARCHAR(20),
    IN p_direccion VARCHAR(100)
)
DETERMINISTIC
BEGIN
    INSERT INTO Cliente(clienteID, nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento, genero, estadoCivil, direccion)
    VALUES (p_clienteID, p_nombre, p_apellidoPaterno, p_apellidoMaterno, p_fechaNacimiento, p_genero, p_estadoCivil, p_direccion);
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE ActualizarClienteCompleto (
    IN p_clienteID INT,
    IN p_nombre VARCHAR(50),
    IN p_apellidoPaterno VARCHAR(50),
    IN p_apellidoMaterno VARCHAR(50),
    IN p_fechaNacimiento DATE,
    IN p_genero VARCHAR(20),
    IN p_estadoCivil VARCHAR(20),
    IN p_direccion VARCHAR(100),
    IN p_telefono1 INT,
    IN p_telefono2 INT
)
BEGIN
    DECLARE cliente_existente INT;
    DECLARE telefono_existente1 INT;
    DECLARE telefono_existente2 INT;

    SELECT COUNT(*) INTO cliente_existente FROM Cliente WHERE clienteID = p_clienteID;

    IF cliente_existente = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El cliente especificado no existe.';
    END IF;

    START TRANSACTION;

    UPDATE Cliente
    SET
        nombre = p_nombre,
        apellidoPaterno = p_apellidoPaterno,
        apellidoMaterno = p_apellidoMaterno,
        fechaNacimiento = p_fechaNacimiento,
        genero = p_genero,
        estadoCivil = p_estadoCivil,
        direccion = p_direccion
    WHERE
        clienteID = p_clienteID;

    SELECT COUNT(*) INTO telefono_existente1 FROM ClienteTelefono WHERE clienteID = p_clienteID AND telefono = p_telefono1;
    SELECT COUNT(*) INTO telefono_existente2 FROM ClienteTelefono WHERE clienteID = p_clienteID AND telefono = p_telefono2;

    IF p_telefono1 IS NOT NULL THEN
        IF telefono_existente1 = 0 THEN
            INSERT INTO ClienteTelefono (clienteID, telefono) VALUES (p_clienteID, p_telefono1);
        END IF;
    END IF;

    IF p_telefono2 IS NOT NULL THEN
        IF telefono_existente2 = 0 THEN
            INSERT INTO ClienteTelefono (clienteID, telefono) VALUES (p_clienteID, p_telefono2);
        END IF;
    END IF;

    COMMIT;
END //

DELIMITER ;


DELIMITER //

DROP PROCEDURE IF EXISTS CrearCompraSeguro //
CREATE PROCEDURE CrearCompraSeguro(
    IN clnt_clienteID VARCHAR(50),
    IN obj_nombre VARCHAR(50),
    IN obj_tipo VARCHAR(50),
    IN obj_valor DECIMAL(10,2),
    IN obj_descripcion VARCHAR(200),
    IN obj_ubicacion VARCHAR(100),
	IN plz_fechaPoliza DATE,
	IN plz_fechaInicio DATE,
	IN plz_fechaVencimiento DATE,
    IN plz_prima DECIMAL (10,2),
	IN plz_montoCobertura DECIMAL(10,2),
    IN sgr_seguroID VARCHAR(50),
    IN cs_obj_metodoPago VARCHAR(50)
)
BEGIN
    DECLARE _objetoID INT;
    DECLARE _polizaID INT;

    INSERT INTO ObjetoAsegurado (nombre, tipo, valor, descripcion, ubicacion, seguroID)
    VALUES (obj_nombre, obj_tipo, obj_valor, obj_descripcion, obj_ubicacion, sgr_seguroID);
    SELECT LAST_INSERT_ID() INTO _objetoID;
    
    INSERT INTO Poliza (fechaPoliza, fechaInicio, fechaVencimiento, prima, montoCobertura, objetoID)
    VALUES (plz_fechaPoliza, plz_fechaInicio, plz_fechaVencimiento, plz_prima, plz_montoCobertura, _objetoID);
    SELECT LAST_INSERT_ID() INTO _polizaID;

    INSERT INTO CompraSeguro (clienteID, seguroID, polizaID, metodoPago)
    VALUES (clnt_clienteID, sgr_seguroID, _polizaID, cs_obj_metodoPago);
END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS VerClientes //
CREATE PROCEDURE VerClientes()
BEGIN
    SELECT c.clienteID AS "ID de Cliente",
		CONCAT_WS(" ",c.nombre,c.apellidoPaterno,c.apellidoMaterno) AS Cliente,
		GROUP_CONCAT(DISTINCT s.nombre ORDER BY s.nombre ASC SEPARATOR ', ') AS "Seguros",
		GROUP_CONCAT(DISTINCT s.cobertura ORDER BY s.cobertura ASC SEPARATOR ', ') AS "Coberturas",
		SUM(p.prima) AS "Prima total actual",
		SUM(p.montoCobertura) AS "Monto de Cobertura total"
	FROM Cliente c
	INNER JOIN CompraSeguro cs ON c.clienteID = cs.clienteID
	INNER JOIN Seguro s ON cs.seguroID = s.seguroID
	INNER JOIN Poliza p ON cs.polizaID = p.polizaID
	WHERE p.fechaVencimiento > CURDATE()
	GROUP BY c.clienteID;
END //

DELIMITER ;

