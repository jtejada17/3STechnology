CREATE DATABASE IF NOT EXISTS `3s_technologyyy` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `3s_technology`;

CREATE TABLE `cargos` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `SUELDO` float NOT NULL,
  `DEPARTAMENTO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `cargos` (`ID`, `NOMBRE`, `SUELDO`, `DEPARTAMENTO`) VALUES
(1, 'Programador', 32000, 1),
(2, 'Administrador de Proyecto', 85000, 1),
(3, 'Auditor', 65000, 4),
(4, 'Contador', 40000, 7),
(5, 'Gerente de Desarrollo', 120000, 1),
(6, 'Administrador de Redes', 90000, 1),
(7, 'Community Manager', 50000, 3),
(8, 'Jefe de Seguridad', 45000, 10),
(9, 'Gerente de Comunicación', 100000, 3),
(10, 'Servicio del Empleado', 55000, 2),
(11, 'Gerente de RRHH', 150000, 2),
(12, 'Secretaria', 30000, 2);

CREATE TABLE `departamentos` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `departamentos` (`ID`, `NOMBRE`) VALUES
(1, 'Tecnologia'),
(2, 'Recursos Humanos'),
(3, 'Comunicaciones'),
(4, 'Calidad'),
(5, 'Acceso Libre a la Informacion'),
(6, 'Almacen'),
(7, 'Financiero'),
(8, 'Cooperativa'),
(9, 'Tesoreria'),
(10, 'Seguridad');

CREATE TABLE `empleados` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(35) NOT NULL,
  `APELLIDO` varchar(35) NOT NULL,
  `CEDULA` text NOT NULL,
  `TELEFONO` varchar(13) DEFAULT NULL,
  `CELULAR` varchar(13) DEFAULT NULL,
  `EMAIL` text NOT NULL,
  `SEXO` varchar(1) NOT NULL COMMENT 'F=FEMENINO, M=MASCULINO',
  `CARGO` int(11) NOT NULL,
  `SEGURO_MEDICO` int(11) NOT NULL DEFAULT '1' COMMENT '0=NO, 1=SI'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `empleados` (`ID`, `NOMBRE`, `APELLIDO`, `CEDULA`, `TELEFONO`, `CELULAR`, `EMAIL`, `SEXO`, `CARGO`, `SEGURO_MEDICO`) VALUES
(1, 'Luis', 'Abreu\r\n', '001-2556884-1', '8095125485', NULL, 'gomezluis@gmail.com', 'M', 1, 1),
(2, 'Juan', 'Fernandez', '001-2487125-4', '8095305469', '8092743369', 'juan@gmail.com', 'M', 1, 1),
(3, 'Jaime', 'Guzman', '001-2488345-1', '8099323458\r\n', '8093995026\r\n', 'jaime@gmail.com', 'M', 1, 1),
(10, 'Francisco', 'Almonte', '001-2573196-5', '8099091394', '8094509030', 'luis@hotmail.com', 'M', 1, 1),
(11, 'Joshua', 'Rodolfo', '882-0224885-0\r\n\r\n', '8096342759', '8094531093', 'joshua@gmail.com', 'M', 6, 1),
(12, 'Rafael', 'Bienvenido\r\n', '827-5594258-5\r\n', '8095276530', '8091623586', 'rafael@hotmail.com', 'M', 2, 1),
(13, 'Jose', 'Miguel\r\n', '001-6254835-4', '8093763185', '8096558457', 'jose@gmail.com', 'M', 3, 0),
(14, 'Braulio', 'Acosta\r\n', '001-9586347-4', '8094031003', '8098535426', 'braulio@hotmail.com', 'M', 4, 1),
(15, 'Angie', 'Peguero', '402-6598753-4', '8098270496', NULL, 'Angie@gmail.com', 'F', 4, 1),
(16, 'Julio', 'Alberto', '502-2844632-3', '8095704869', '8096849701', 'Julio@gmail.com\r\n', 'M', 4, 1),
(17, 'Arlette', 'Alcantara', '961-2234318-5\r\n', '8094781034', '8094421048', 'Arlette@gmail.com\r\n', 'F', 4, 1),
(18, 'Yanick', 'Almont', '557-2434525-4\r\n', '8095407588', '8097883846', 'Yanick@gmail.com\r\n', 'F', 4, 0),
(19, 'Carmen', 'Almonte', '757-4634879-0\r\n', '8096649120', '8097253402', 'Carmen@gmail.com\r\n', 'F', 5, 1),
(20, 'Wendy', 'Almonte', '587-7666552-2\r\n', '8094091227', '8098449741', 'Wendy@gmail.com\r\n', 'F', 7, 1),
(21, 'Maitee', 'Yanire', '063-0130657-4\r\n', '8091687728', '8094819434', 'Maitee@gmail.com\r\n', 'F', 8, 1),
(22, 'Starlyn', 'Jose', '018-0646114-8\r\n', '', '8095716705', 'Starlyn@gmail.com\r\n', 'M', 9, 1),
(23, 'Kharlos', 'Osiris', '738-6626773-8\r\n', '8097616343', '8090702545', 'Kharlos@gmail.com\r\n', 'M', 10, 1),
(24, 'Adrian', 'Alexander', '914-2732631-8\r\n', '8094110222', '8098189146', 'Adrian@gmail.com\r\n', 'M', 10, 1),
(25, 'Mia', 'Lorena', '393-9141743-5\r\n', '8092155414', '8092409054', 'Mia@gmail.com\r\n', 'F', 11, 1),
(26, 'Julissa', 'Amador', '073-5072085-9\r\n', '8091183087', '8093945485', 'Julissa@gmail.com\r\n', 'F', 12, 0);

CREATE TABLE `nomina` (
  `ID` int(11) NOT NULL,
  `EMPLEADO` int(11) NOT NULL,
  `SALARIO_HR` int(11) NOT NULL,
  `HORAS_POR_QUINCENA` int(11) NOT NULL DEFAULT '80'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `nomina` (`ID`, `EMPLEADO`, `SALARIO_HR`, `HORAS_POR_QUINCENA`) VALUES
(1, 1, 263, 80),
(2, 2, 263, 80),
(3, 3, 263, 80),
(4, 10, 263, 80),
(6, 11, 563, 80),
(7, 12, 531, 80),
(8, 13, 406, 80),
(9, 14, 250, 80),
(10, 15, 250, 80);

CREATE TABLE `view_nomina_general` (
`ID` int(11)
,`NOMBRE` varchar(35)
,`APELLIDO` varchar(35)
,`CEDULA` text
,`TELEFONO` varchar(13)
,`CELULAR` varchar(13)
,`EMAIL` text
,`SEXO` varchar(1)
,`CARGO` varchar(50)
,`SEGURO_MEDICO` varchar(2)
,`SALARIO_HR` int(11)
,`HORAS_POR_QUINCENA` int(11)
,`SALARIO_M` decimal(35,0)
,`DEDUCCION_DE_SEGURO` varbinary(40)
,`ISR` varbinary(40)
,`SALARIO_NETO` decimal(40,2)
);

DROP TABLE IF EXISTS `view_nomina_general`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_nomina_general`  AS  select `nm`.`ID` AS `ID`,`e`.`NOMBRE` AS `NOMBRE`,`e`.`APELLIDO` AS `APELLIDO`,`e`.`CEDULA` AS `CEDULA`,`e`.`TELEFONO` AS `TELEFONO`,`e`.`CELULAR` AS `CELULAR`,`e`.`EMAIL` AS `EMAIL`,`e`.`SEXO` AS `SEXO`,`cg`.`NOMBRE` AS `CARGO`,if((`e`.`SEGURO_MEDICO` = 1),'SI','NO') AS `SEGURO_MEDICO`,`nm`.`SALARIO_HR` AS `SALARIO_HR`,`nm`.`HORAS_POR_QUINCENA` AS `HORAS_POR_QUINCENA`,sum((`nm`.`SALARIO_HR` * 160)) AS `SALARIO_M`,if((`e`.`SEGURO_MEDICO` = 1),sum(((`nm`.`SALARIO_HR` * 160) * 0.02)),'0') AS `DEDUCCION_DE_SEGURO`,if((sum((`nm`.`SALARIO_HR` * 160)) > 35000),sum(((`nm`.`SALARIO_HR` * 160) * 0.01)),'0') AS `ISR`,if((`e`.`SEGURO_MEDICO` = 1),sum((((`nm`.`SALARIO_HR` * 160) - ((`nm`.`SALARIO_HR` * 160) * 0.02)) + ((`nm`.`SALARIO_HR` * 160) * 0.01))),sum(((`nm`.`SALARIO_HR` * 160) - ((`nm`.`SALARIO_HR` * 160) * 0.01)))) AS `SALARIO_NETO` from ((`nomina` `nm` join `empleados` `e` on((`nm`.`EMPLEADO` = `e`.`ID`))) join `cargos` `cg` on((`e`.`CARGO` = `cg`.`ID`))) group by `nm`.`ID` ;

ALTER TABLE `cargos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_DEPEARTAMENTO` (`DEPARTAMENTO`);

ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `empleados`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_CARGO` (`CARGO`);

ALTER TABLE `nomina`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_EMPLEADO` (`EMPLEADO`);

ALTER TABLE `cargos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `departamentos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `empleados`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

ALTER TABLE `nomina`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `cargos`
  ADD CONSTRAINT `FK_DEPEARTAMENTO` FOREIGN KEY (`DEPARTAMENTO`) REFERENCES `departamentos` (`ID`);

ALTER TABLE `empleados`
  ADD CONSTRAINT `FK_CARGO` FOREIGN KEY (`CARGO`) REFERENCES `cargos` (`ID`);

ALTER TABLE `nomina`
  ADD CONSTRAINT `FK_EMPLEADO` FOREIGN KEY (`EMPLEADO`) REFERENCES `empleados` (`ID`);
