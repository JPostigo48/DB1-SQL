INSERT INTO Seguro VALUES 
(1, 'Seguro contra robo de mercadería', 'Protección contra robo de inventario comercial', '2023-01-01', 'Robo'),
(2, 'Seguro contra robo de automóvil', 'Protección contra robo de vehículos', '2023-02-01', 'Robo'),
(3, 'Seguro contra robo de vivienda', 'Protección contra robo de propiedades residenciales', '2023-03-01', 'Robo'),
(4, 'Seguro contra robo de objetos personales', 'Protección contra robo de objetos personales', '2023-04-01', 'Robo'),
(5, 'Seguro de Arte', 'Seguro para colecciones de arte', '2023-05-01', 'Daños y pérdida'),
(6, 'Seguro de Vida', 'Seguro de vida personal', '2023-06-01', 'Fallecimiento'),
(7, 'Seguro de Salud', 'Seguro médico para gastos de salud', '2023-07-01', 'Enfermedades y accidentes'),
(8, 'Seguro de Responsabilidad Civil', 'Seguro de responsabilidad legal', '2023-08-01', 'Lesiones y daños a terceros'),
(9, 'Seguro de Viaje', 'Seguro para gastos médicos y de cancelación de viajes', '2023-09-01', 'Emergencias durante viajes'),
(10, 'Seguro de Mascotas', 'Seguro para gastos médicos de mascotas', '2023-10-01', 'Enfermedades y accidentes');


INSERT INTO ObjetoAsegurado VALUES 
(1, 'Casa de Playa', 'Casa', 150000.00, 'Casa frente al mar con piscina', 'Avenida del Mar 123, Asia, Lima', 1),
(2, 'Auto Toyota Corolla', 'Automóvil', 20000.00, 'Auto sedán de color rojo', 'Calle Grau 456, Miraflores, Lima', 2),
(3, 'Plan de Salud Familiar', 'Seguro de Salud', 5000.00, 'Cobertura para toda la familia', 'Jirón Arequipa 789, Cusco', 3),
(4, 'Seguro de Vida', 'Seguro de Vida', 100000.00, 'Cobertura en caso de fallecimiento', 'Calle Lima 234, Arequipa', 4),
(5, 'Departamento en Condominio', 'Departamento', 120000.00, 'Departamento de 3 dormitorios', 'Calle Los Pinos 567, San Isidro, Lima', 1),
(6, 'Auto Nissan March', 'Automóvil', 15000.00, 'Auto compacto de color azul', 'Avenida Brasil 890, La Victoria, Lima', 2),
(7, 'Plan de Salud Individual', 'Seguro de Salud', 2000.00, 'Cobertura médica para una persona', 'Jirón Huancayo 345, Trujillo', 3),
(8, 'Seguro de Vida', 'Seguro de Vida', 80000.00, 'Cobertura en caso de fallecimiento', 'Calle Piura 678, Chiclayo', 4),
(9, 'Casa en los Andes', 'Casa', 80000.00, 'Casa de campo con vista a los Andes', 'Avenida Tacna 901, Huaraz', 1),
(10, 'Auto Suzuki Swift', 'Automóvil', 18000.00, 'Auto hatchback de color blanco', 'Calle Cuzco 123, Huancayo', 2),
(11, 'Plan de Salud Materno', 'Seguro de Salud', 3000.00, 'Cobertura especial para mujeres embarazadas', 'Avenida Amazonas 234, Iquitos', 3),
(12, 'Seguro de Vida para hijos', 'Seguro de Vida', 50000.00, 'Cobertura en caso de fallecimiento de los hijos', 'Calle Junín 456, Puno', 4),
(13, 'Departamento en Miraflores', 'Departamento', 150000.00, 'Departamento moderno cerca al mar', 'Calle Tarapacá 567, Miraflores, Lima', 1),
(14, 'Auto Hyundai Tucson', 'Automóvil', 25000.00, 'Auto SUV de color plateado', 'Avenida del Ejército 890, Barranco, Lima', 2),
(15, 'Plan de Salud para ancianos', 'Seguro de Salud', 4000.00, 'Cobertura médica para personas mayores', 'Calle Lambayeque 123, Chimbote', 3),
(16, 'Seguro de Vida para padres', 'Seguro de Vida', 70000.00, 'Cobertura en caso de fallecimiento de los padres', 'Calle Junín 789, Ayacucho', 4),
(17, 'Casa en Cieneguilla', 'Casa', 100000.00, 'Casa de campo con amplio jardín', 'Calle Los Alamos 345, Cieneguilla, Lima', 1),
(18, 'Auto Chevrolet Spark', 'Automóvil', 12000.00, 'Auto compacto de color negro', 'Avenida Aramburú 678, Surquillo, Lima', 2),
(19, 'Plan de Salud Dental', 'Seguro de Salud', 1500.00, 'Cobertura para tratamientos dentales', 'Calle Puno 901, Tacna', 3),
(20, 'Seguro de Vida para cónyuge', 'Seguro de Vida', 60000.00, 'Cobertura en caso de fallecimiento del cónyuge', 'Calle Piura 123, Piura', 4);


-- Inserciones para Empleado
INSERT INTO Empleado VALUES 
(1, 'Luis', 'Gonzales', 'Perez', '1990-05-15', 'Masculino', 'Soltero', '2022-01-10', 'Calle Lima 123, Lima', 2000.00),
(2, 'Ana', 'Diaz', 'Gomez', '1985-08-20', 'Femenino', 'Casada', '2022-02-05', 'Avenida Arequipa 456, Arequipa', 2200.00),
(3, 'Carlos', 'Torres', 'Lopez', '1993-03-12', 'Masculino', 'Soltero', '2022-03-15', 'Calle Huancayo 789, Huancayo', 1800.00),
(4, 'Maria', 'Chavez', 'Flores', '1988-11-28', 'Femenino', 'Casada', '2022-04-20', 'Jirón Cuzco 234, Cusco', 2500.00),
(5, 'Pedro', 'Ramirez', 'Vargas', '1995-07-10', 'Masculino', 'Soltero', '2022-05-25', 'Avenida Amazonas 567, Iquitos', 2100.00),
(6, 'Luisa', 'Garcia', 'Castillo', '1991-09-18', 'Femenino', 'Soltera', '2022-06-30', 'Calle Ayacucho 890, Ayacucho', 2400.00),
(7, 'Diego', 'Perez', 'Gutierrez', '1992-04-25', 'Masculino', 'Soltero', '2022-07-10', 'Calle Trujillo 345, Trujillo', 2300.00),
(8, 'Laura', 'Lopez', 'Sanchez', '1990-10-15', 'Femenino', 'Casada', '2022-08-05', 'Jirón Lima 678, Lima', 2200.00),
(9, 'Juan', 'Martinez', 'Herrera', '1987-12-20', 'Masculino', 'Casado', '2022-09-20', 'Calle Arequipa 901, Arequipa', 2400.00),
(10, 'Carmen', 'Gomez', 'Alvarez', '1989-08-12', 'Femenino', 'Soltera', '2022-10-25', 'Avenida Puno 123, Puno', 2100.00),
(11, 'Daniel', 'Rodriguez', 'Diaz', '1994-03-05', 'Masculino', 'Soltero', '2022-11-30', 'Jirón Piura 456, Piura', 2500.00),
(12, 'Ana', 'Flores', 'Garcia', '1993-07-18', 'Femenino', 'Casada', '2022-12-15', 'Calle Cusco 789, Cusco', 2300.00),
(13, 'Jorge', 'Sanchez', 'Gonzales', '1991-05-20', 'Masculino', 'Soltero', '2023-01-20', 'Avenida Tacna 567, Tacna', 2200.00),
(14, 'Sofia', 'Hernandez', 'Ramirez', '1995-09-10', 'Femenino', 'Soltera', '2023-02-05', 'Calle Huancayo 890, Huancayo', 2400.00),
(15, 'Miguel', 'Alvarez', 'Fernandez', '1988-11-28', 'Masculino', 'Casado', '2023-03-12', 'Jirón Lima 123, Lima', 2600.00),
(16, 'Elena', 'Garcia', 'Perez', '1990-07-10', 'Femenino', 'Soltera', '2023-04-10', 'Avenida Arequipa 456, Arequipa', 2300.00),
(17, 'Alejandro', 'Torres', 'Lopez', '1992-09-18', 'Masculino', 'Soltero', '2023-05-15', 'Calle Huancavelica 789, Huancavelica', 2500.00),
(18, 'Laura', 'Perez', 'Castillo', '1987-04-05', 'Femenino', 'Casada', '2023-06-20', 'Avenida Amazonas 123, Iquitos', 2200.00),
(19, 'Carlos', 'Martinez', 'Sanchez', '1989-10-28', 'Masculino', 'Casado', '2023-07-15', 'Jirón Puno 456, Puno', 2400.00),
(20, 'Fernanda', 'Gomez', 'Herrera', '1993-12-15', 'Femenino', 'Soltera', '2023-08-20', 'Calle Moquegua 789, Moquegua', 2600.00);

-- Inserciones para Vendedor
INSERT INTO Vendedor VALUES 
(1, 'contraseña1'),
(2, 'contraseña2'),
(3, 'contraseña3'),
(4, 'contraseña4'),
(5, 'contraseña5'),
(6, 'contraseña6');

-- Inserciones para Asesor
INSERT INTO Asesor VALUES 
(1, 'juan.garcia@example.com', 'Licenciado en Finanzas'),
(2, 'maria.martinez@example.com', 'Maestría en Seguros'),
(3, 'pedro.rodriguez@example.com', 'Licenciado en Derecho'),
(4, 'ana.lopez@example.com', 'Maestría en Administración de Empresas'),
(5, 'javier.fernandez@example.com', 'Licenciado en Economía'),
(6, 'laura.diaz@example.com', 'Maestría en Finanzas');

-- Inserciones para EvaluadorDeRiesgo
INSERT INTO EvaluadorDeRiesgo VALUES 
(1, 5),
(2, 7),
(3, 6),
(4, 8),
(5, 9),
(6, 10);



INSERT INTO Cliente VALUES 
(1, 'María', 'Gonzales', 'Perez', '1985-06-20', 'Femenino', 'Casada', 'Calle Lima 123, Lima'),
(2, 'José', 'Diaz', 'Gomez', '1990-09-15', 'Masculino', 'Soltero', 'Avenida Arequipa 456, Arequipa'),
(3, 'Sofía', 'Torres', 'Lopez', '1988-04-12', 'Femenino', 'Soltera', 'Calle Huancayo 789, Huancayo'),
(4, 'Juan', 'Chavez', 'Flores', '1979-11-28', 'Masculino', 'Casado', 'Jirón Cuzco 234, Cusco'),
(5, 'Ana', 'Ramirez', 'Vargas', '1993-07-10', 'Femenino', 'Soltera', 'Avenida Amazonas 567, Iquitos'),
(6, 'Carlos', 'Garcia', 'Castillo', '1987-09-18', 'Masculino', 'Soltero', 'Calle Ayacucho 890, Ayacucho'),
(7, 'Laura', 'Perez', 'Gutierrez', '1989-05-25', 'Femenino', 'Casada', 'Calle Trujillo 345, Trujillo'),
(8, 'Diego', 'Lopez', 'Sanchez', '1991-10-15', 'Masculino', 'Soltero', 'Jirón Lima 678, Lima'),
(9, 'Mariana', 'Martinez', 'Herrera', '1985-12-20', 'Femenino', 'Casada', 'Calle Arequipa 901, Arequipa'),
(10, 'Ricardo', 'Gomez', 'Alvarez', '1983-08-12', 'Masculino', 'Soltero', 'Avenida Puno 123, Puno'),
(11, 'Camila', 'Rodriguez', 'Diaz', '1994-03-05', 'Femenino', 'Soltera', 'Jirón Piura 456, Piura'),
(12, 'Gabriel', 'Flores', 'Garcia', '1990-07-18', 'Masculino', 'Casado', 'Calle Cusco 789, Cusco'),
(13, 'Eva', 'Sanchez', 'Gonzales', '1992-05-20', 'Femenino', 'Soltera', 'Avenida Tacna 567, Tacna'),
(14, 'Pablo', 'Hernandez', 'Ramirez', '1988-09-10', 'Masculino', 'Soltero', 'Calle Huancayo 890, Huancayo'),
(15, 'Julia', 'Alvarez', 'Fernandez', '1985-11-28', 'Femenino', 'Casada', 'Jirón Lima 123, Lima'),
(16, 'Luis', 'Garcia', 'Perez', '1993-07-10', 'Masculino', 'Soltero', 'Avenida Arequipa 456, Arequipa'),
(17, 'Ana', 'Torres', 'Lopez', '1991-09-18', 'Femenino', 'Soltera', 'Calle Huancavelica 789, Huancavelica'),
(18, 'Jorge', 'Perez', 'Castillo', '1988-04-05', 'Masculino', 'Casado', 'Avenida Amazonas 123, Iquitos'),
(19, 'Laura', 'Martinez', 'Sanchez', '1990-10-28', 'Femenino', 'Casada', 'Jirón Puno 456, Puno'),
(20, 'Fernando', 'Gomez', 'Herrera', '1987-12-15', 'Masculino', 'Soltero', 'Calle Moquegua 789, Moquegua');


INSERT INTO ClienteTelefono VALUES 
(1, 1111),
(2, 222),
(3, 3333),
(4, 4444),
(5, 55555),
(6, 6666),
(7, 7777),
(8, 888),
(9, 999),
(10, 10110),
(11, 111),
(12, 121212),
(13, 1313),
(14, 1414),
(15, 151515),
(16, 16166),
(17, 17177),
(18, 18181),
(19, 191),
(20, 20202);


INSERT INTO Poliza (fechaPoliza, fechaInicio, fechaVencimiento, prima, montoCobertura, objetoID) 
VALUES 
("2023-05-10", "2023-06-01", "2024-06-01", 1200.00, 25000.00, 3),
("2023-06-15", "2023-07-01", "2024-07-01", 1500.00, 30000.00, 5),
("2023-07-20", "2023-08-01", "2024-08-01", 1100.00, 22000.00, 7),
("2023-08-25", "2023-09-01", "2024-09-01", 1300.00, 26000.00, 9),
("2023-09-30", "2023-10-01", "2024-10-01", 1400.00, 28000.00, 11),
("2023-10-05", "2023-11-01", "2024-11-01", 1600.00, 32000.00, 13),
("2023-11-10", "2023-12-01", "2024-12-01", 1700.00, 34000.00, 15),
("2023-12-15", "2024-01-01", "2025-01-01", 1800.00, 36000.00, 17),
("2024-01-20", "2024-02-01", "2025-02-01", 1900.00, 38000.00, 19),
("2024-02-25", "2024-03-01", "2025-03-01", 2000.00, 40000.00, 2),
("2024-03-30", "2024-04-01", "2025-04-01", 2100.00, 42000.00, 4),
("2024-04-05", "2024-05-01", "2025-05-01", 2200.00, 44000.00, 6),
("2024-05-10", "2024-06-01", "2025-06-01", 2300.00, 46000.00, 8),
("2024-06-15", "2024-07-01", "2025-07-01", 2400.00, 48000.00, 10),
("2024-07-20", "2024-08-01", "2025-08-01", 2500.00, 50000.00, 12),
("2024-08-25", "2024-09-01", "2025-09-01", 2600.00, 52000.00, 14),
("2024-09-30", "2024-10-01", "2025-10-01", 2700.00, 54000.00, 16),
("2024-10-05", "2024-11-01", "2025-11-01", 2800.00, 56000.00, 18),
("2024-11-10", "2024-12-01", "2025-12-01", 2900.00, 58000.00, 20),
("2024-12-15", "2025-01-01", "2026-01-01", 3000.00, 60000.00, 1);


INSERT INTO CompraSeguro VALUES 
(1, 1, 1, 'Tarjeta de crédito'),
(2, 2, 2, 'Efectivo'),
(3, 3, 3, 'Transferencia bancaria'),
(4, 4, 4, 'Tarjeta de débito'),
(5, 5, 5, 'Efectivo'),
(6, 6, 6, 'Tarjeta de crédito'),
(7, 7, 7, 'Transferencia bancaria'),
(8, 8, 8, 'Efectivo'),
(9, 9, 9, 'Tarjeta de débito'),
(10, 10, 10, 'Transferencia bancaria'),
(11, 11, 11, 'Efectivo'),
(12, 12, 12, 'Tarjeta de crédito'),
(13, 13, 13, 'Transferencia bancaria'),
(14, 14, 14, 'Efectivo'),
(15, 15, 15, 'Tarjeta de débito'),
(16, 16, 16, 'Transferencia bancaria'),
(17, 17, 17, 'Efectivo'),
(18, 18, 18, 'Tarjeta de crédito'),
(19, 19, 19, 'Efectivo'),
(20, 20, 20, 'Tarjeta de débito');


INSERT INTO BaseLegal VALUES 
(1, 'Ley de Protección de Viviendas', 'Ley', '2022-12-20', 'Ley que regula la protección de viviendas contra robos y daños', 1),
(2, 'Reglamento de Seguridad Vehicular', 'Reglamento', '2023-01-05', 'Reglamento que establece normas de seguridad para vehículos', 2),
(3, 'Ley de Salud Pública', 'Ley', '2023-02-10', 'Ley que garantiza el acceso a servicios de salud para la población', 3),
(4, 'Reglamento de Seguros de Vida', 'Reglamento', '2023-03-20', 'Reglamento que regula el funcionamiento de los seguros de vida', 4),
(5, 'Ley de Protección de la Propiedad', 'Ley', '2023-04-25', 'Ley que protege la propiedad privada y establece medidas contra el robo', 1),
(6, 'Reglamento de Seguridad Vial', 'Reglamento', '2023-05-10', 'Reglamento que establece normas de seguridad para la circulación vial', 2),
(7, 'Ley de Protección de Datos Personales', 'Ley', '2023-06-15', 'Ley que garantiza la protección de la información personal', 3),
(8, 'Reglamento de Seguros de Salud', 'Reglamento', '2023-07-20', 'Reglamento que regula el funcionamiento de los seguros de salud', 4),
(9, 'Ley de Protección Ambiental', 'Ley', '2023-08-25', 'Ley que establece medidas para la protección del medio ambiente', 1),
(10, 'Reglamento de Seguros de Bienes Raíces', 'Reglamento', '2023-09-10', 'Reglamento que regula el funcionamiento de los seguros de bienes raíces', 2),
(11, 'Ley de Seguridad Laboral', 'Ley', '2023-10-15', 'Ley que establece normas de seguridad en el ámbito laboral', 3),
(12, 'Reglamento de Seguros de Responsabilidad Civil', 'Reglamento', '2023-11-20', 'Reglamento que regula el funcionamiento de los seguros de responsabilidad civil', 4),
(13, 'Ley de Protección del Consumidor', 'Ley', '2023-12-25', 'Ley que protege los derechos de los consumidores', 1),
(14, 'Reglamento de Seguros de Automóviles', 'Reglamento', '2024-01-30', 'Reglamento que regula el funcionamiento de los seguros de automóviles', 2),
(15, 'Ley de Seguridad Alimentaria', 'Ley', '2024-02-05', 'Ley que establece normas de seguridad en la producción y distribución de alimentos', 3),
(16, 'Reglamento de Seguros de Salud Ocupacional', 'Reglamento', '2024-03-10', 'Reglamento que regula el funcionamiento de los seguros de salud ocupacional', 4),
(17, 'Ley de Protección del Patrimonio Cultural', 'Ley', '2024-04-15', 'Ley que protege el patrimonio cultural y establece medidas de conservación', 1),
(18, 'Reglamento de Seguros de Viaje', 'Reglamento', '2024-05-20', 'Reglamento que regula el funcionamiento de los seguros de viaje', 2),
(19, 'Ley de Seguridad Social', 'Ley', '2024-06-25', 'Ley que establece normas para la seguridad social y la protección social', 3),
(20, 'Reglamento de Seguros de Accidentes Personales', 'Reglamento', '2024-07-30', 'Reglamento que regula el funcionamiento de los seguros de accidentes personales', 4);

INSERT INTO ListaContactosVendedor VALUES 
(1, 'luis@email.com'),
(2, 'sofia@email.com'),
(3, 'carlos@email.com'),
(4, 'elena@email.com'),
(5, 'alejandro@email.com'),
(6, 'laura@email.com');


INSERT INTO Robo VALUES 
(1, 'Asalto a mano armada', 'Supermercado XYZ', '2023-01-10', 'Informe policial...', 'Robo de productos de la tienda.', 1),
(2, 'Robo de vehículo estacionado', 'Calle Principal', '2023-02-20', 'Informe policial...', 'Robo de automóvil estacionado en la calle.', 2),
(3, 'Intrusión en propiedad residencial', '123 Calle Residencial', '2023-03-15', 'Informe policial...', 'Robo en casa residencial durante la noche.', 3),
(4, 'Hurto en transporte público', 'Autobús ruta 123', '2023-04-05', 'Informe policial...', 'Robo de bolso a pasajero en autobús.', 4),
(5, 'Robo en galería de arte', '234 Galería de Arte', '2023-05-25', 'Informe policial...', 'Robo de pinturas y esculturas de la galería.', 5),
(6, 'Robo de motocicleta estacionada', '890 Calle de la Moto', '2023-06-30', 'Informe policial...', 'Robo de motocicleta estacionada en la vía pública.', 1),
(7, 'Robo en tienda de electrónicos', '101 Calle de la Tecnología', '2023-07-10', 'Informe policial...', 'Robo de equipos electrónicos en tienda.', 2),
(8, 'Asalto a mano armada', '789 Calle Comercial', '2023-08-20', 'Informe policial...', 'Robo en establecimiento comercial.', 3),
(9, 'Robo de automóvil estacionado', '456 Avenida Central', '2023-09-05', 'Informe policial...', 'Robo de vehículo estacionado.', 4),
(10, 'Robo de joyas en domicilio', '567 Calle Personal', '2023-10-15', 'Informe policial...', 'Robo de joyas en domicilio particular.', 5),
(11, 'Robo de vehículo estacionado', '9012 Avenida de la Naturaleza', '2023-11-18', 'Informe policial...', 'Robo de automóvil estacionado en la calle.', 1),
(12, 'Asalto a mano armada', '345 Calle del Cine', '2023-12-02', 'Informe policial...', 'Robo en establecimiento durante asalto.', 2),
(13, 'Robo en vivienda durante ausencia', '678 Calle de la Fotografía', '2024-01-08', 'Informe policial...', 'Robo en casa durante ausencia de los propietarios.', 3),
(14, 'Hurto de objetos personales', '901 Calle del Café', '2024-02-20', 'Informe policial...', 'Robo de objetos personales en café.', 4),
(15, 'Robo en tienda de ropa', '2345 Avenida del Chocolate', '2024-03-05', 'Informe policial...', 'Robo en tienda de ropa y accesorios.', 5),
(16, 'Robo de automóvil estacionado', '5678 Calle del Helado', '2024-04-18', 'Informe policial...', 'Robo de vehículo estacionado en la calle.', 1),
(17, 'Robo de vehículo estacionado', '123 Calle de la Aventura', '2024-05-02', 'Informe policial...', 'Robo de automóvil estacionado en la calle.', 2),
(18, 'Robo en joyería', '890 Calle del Juego', '2024-06-08', 'Informe policial...', 'Robo en joyería durante horario laboral.', 3),
(19, 'Asalto a mano armada', '1234 Calle del Libro', '2024-07-20', 'Informe policial...', 'Robo en librería durante asalto.', 4),
(20, 'Robo en casa residencial', '5678 Avenida de la Moda', '2024-08-05', 'Informe policial...', 'Robo en casa residencial durante la noche.', 5);


INSERT INTO Reclamo VALUES 
(1, 'Demora en el pago de indemnización', 'Supermercado XYZ', '2023-01-15', 'El reclamo se realiza debido a la demora en el pago de la indemnización.', 1),
(2, 'Negación de cobertura', 'Calle Principal', '2023-02-25', 'El reclamo se realiza debido a la negación de cobertura por parte de la aseguradora.', 2),
(3, 'Monto de indemnización insuficiente', '123 Calle Residencial', '2023-03-20', 'El reclamo se realiza porque el monto de indemnización ofrecido es considerado insuficiente.', 3),
(4, 'Proceso de reclamación complicado', 'Autobús ruta 123', '2023-04-10', 'El reclamo se realiza debido a la dificultad en el proceso de reclamación.', 4),
(5, 'Falta de respuesta a reclamo previo', '234 Galería de Arte', '2023-05-30', 'El reclamo se realiza porque no se ha recibido respuesta a un reclamo anterior.', 5),
(6, 'Demora en el proceso de reclamación', '890 Calle de la Moto', '2023-06-20', 'El reclamo se realiza debido a la demora en el proceso de reclamación.', 1),
(7, 'Negación de cobertura', '101 Calle de la Tecnología', '2023-07-15', 'El reclamo se realiza debido a la negación de cobertura por parte de la aseguradora.', 2),
(8, 'Monto de indemnización insuficiente', '789 Calle Comercial', '2023-08-25', 'El reclamo se realiza porque el monto de indemnización ofrecido es considerado insuficiente.', 3),
(9, 'Proceso de reclamación complicado', '456 Avenida Central', '2023-09-15', 'El reclamo se realiza debido a la dificultad en el proceso de reclamación.', 4),
(10, 'Falta de respuesta a reclamo previo', '567 Calle Personal', '2023-10-05', 'El reclamo se realiza porque no se ha recibido respuesta a un reclamo anterior.', 5),
(11, 'Demora en el pago de indemnización', '9012 Avenida de la Naturaleza', '2023-11-30', 'El reclamo se realiza debido a la demora en el pago de la indemnización.', 1),
(12, 'Negación de cobertura', '345 Calle del Cine', '2023-12-15', 'El reclamo se realiza debido a la negación de cobertura por parte de la aseguradora.', 2),
(13, 'Monto de indemnización insuficiente', '678 Calle de la Fotografía', '2024-01-30', 'El reclamo se realiza porque el monto de indemnización ofrecido es considerado insuficiente.', 3),
(14, 'Proceso de reclamación complicado', '901 Calle del Café', '2024-02-10', 'El reclamo se realiza debido a la dificultad en el proceso de reclamación.', 4),
(15, 'Falta de respuesta a reclamo previo', '2345 Avenida del Chocolate', '2024-03-25', 'El reclamo se realiza porque no se ha recibido respuesta a un reclamo anterior.', 5),
(16, 'Demora en el pago de indemnización', '5678 Calle del Helado', '2024-04-20', 'El reclamo se realiza debido a la demora en el pago de la indemnización.', 1),
(17, 'Negación de cobertura', '123 Calle de la Aventura', '2024-05-15', 'El reclamo se realiza debido a la negación de cobertura por parte de la aseguradora.', 2),
(18, 'Monto de indemnización insuficiente', '890 Calle del Juego', '2024-06-30', 'El reclamo se realiza porque el monto de indemnización ofrecido es considerado insuficiente.', 3),
(19, 'Proceso de reclamación complicado', '1234 Calle del Libro', '2024-07-10', 'El reclamo se realiza debido a la dificultad en el proceso de reclamación.', 4),
(20, 'Falta de respuesta a reclamo previo', '5678 Avenida de la Moda', '2024-08-25', 'El reclamo se realiza porque no se ha recibido respuesta a un reclamo anterior.', 5);

INSERT INTO AnalisisRiesgo VALUES 
(1, 'Evaluación de riesgo para seguro de mercadería', 'Alto', 1, 1),
(2, 'Evaluación de riesgo para seguro de automóvil', 'Moderado', 2, 2),
(3, 'Evaluación de riesgo para seguro de vivienda', 'Bajo', 3, 3),
(4, 'Evaluación de riesgo para seguro de objetos personales', 'Alto', 4, 4),
(5, 'Evaluación de riesgo para seguro de mercadería', 'Moderado', 5, 5),
(6, 'Evaluación de riesgo para seguro de automóvil', 'Bajo', 6, 6),
(7, 'Evaluación de riesgo para seguro de vivienda', 'Alto', 1, 7),
(8, 'Evaluación de riesgo para seguro de objetos personales', 'Moderado', 2, 8),
(9, 'Evaluación de riesgo para seguro de mercadería', 'Bajo', 3, 9),
(10, 'Evaluación de riesgo para seguro de automóvil', 'Alto', 4, 10),
(11, 'Evaluación de riesgo para seguro de vivienda', 'Moderado', 1, 1),
(12, 'Evaluación de riesgo para seguro de objetos personales', 'Alto', 2, 2),
(13, 'Evaluación de riesgo para seguro de mercadería', 'Moderado', 3, 3),
(14, 'Evaluación de riesgo para seguro de automóvil', 'Bajo', 4, 4),
(15, 'Evaluación de riesgo para seguro de vivienda', 'Alto', 5, 5),
(16, 'Evaluación de riesgo para seguro de objetos personales', 'Moderado', 6, 6),
(17, 'Evaluación de riesgo para seguro de mercadería', 'Bajo', 1, 7),
(18, 'Evaluación de riesgo para seguro de automóvil', 'Alto', 2, 8),
(19, 'Evaluación de riesgo para seguro de vivienda', 'Moderado', 3, 9),
(20, 'Evaluación de riesgo para seguro de objetos personales', 'Alto', 6, 10);


INSERT INTO Publicidad VALUES 
(1, 'Televisión', 5000.00),
(2, 'Radio', 2000.00),
(3, 'Internet', 3000.00),
(4, 'Periódico', 1500.00),
(5, 'Revista', 2500.00),
(6, 'Redes Sociales', 4000.00),
(7, 'Publicidad Exterior', 3500.00),
(8, 'Correo Electrónico', 2800.00),
(9, 'Marketing Directo', 3200.00),
(10, 'Eventos Patrocinados', 4500.00),
(11, 'Publicidad en Línea', 3700.00),
(12, 'Anuncios Impresos', 2600.00),
(13, 'Publicidad Móvil', 3800.00),
(14, 'Publicidad en Autobuses', 3300.00),
(15, 'Marketing de Contenidos', 4200.00),
(16, 'Publicidad en Estadios', 4700.00),
(17, 'Publicidad Interactiva', 3900.00),
(18, 'Marketing de Influencers', 4100.00),
(19, 'Publicidad en Metro', 3400.00),
(20, 'Publicidad en Taxis', 3600.00);


INSERT INTO PublicidadSeguro VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5),
(11, 1),
(12, 2),
(13, 3),
(14, 4),
(15, 5),
(16, 1),
(17, 2),
(18, 3),
(19, 4),
(20, 5);

