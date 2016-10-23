CREATE TABLE Clinica (
 cod_clinica INT NOT NULL,
 nombre VARCHAR(50) NOT NULL,
 direccion VARCHAR(50) NOT NULL,
 telefono VARCHAR(9) NOT NULL
);

ALTER TABLE Clinica ADD CONSTRAINT PK_Clinica PRIMARY KEY (cod_clinica);


CREATE TABLE Medicamento (
 cod_medicamento INT NOT NULL,
 nombre VARCHAR(75)
);

ALTER TABLE Medicamento ADD CONSTRAINT PK_Medicamento PRIMARY KEY (cod_medicamento);


CREATE TABLE Persona (
 cod_persona INT NOT NULL,
 nombre VARCHAR(50) NOT NULL,
 apellido VARCHAR(50) NOT NULL,
 fecha_nacimiento DATE NOT NULL,
 conyuge VARCHAR(100),
 direccion VARCHAR(50) NOT NULL,
 dui VARCHAR(50),
 profesion VARCHAR(50),
 estado_civil VARCHAR(25) NOT NULL,
 padre VARCHAR(100),
 madre VARCHAR(100),
 genero CHAR(1) NOT NULL
);

ALTER TABLE Persona ADD CONSTRAINT PK_Persona PRIMARY KEY (cod_persona);


CREATE TABLE Usuario (
 cod_usuario INT NOT NULL,
 cod_persona INT NOT NULL,
 nombre VARCHAR(25) NOT NULL,
 password VARCHAR(32) NOT NULL,
 rol VARCHAR(25) NOT NULL
);

ALTER TABLE Usuario ADD CONSTRAINT PK_Usuario PRIMARY KEY (cod_usuario,cod_persona);


CREATE TABLE Dosis (
 cod_dosis INT NOT NULL,
 cod_medicamento INT NOT NULL,
 periodo TIMESTAMP(5),
 unidad VARCHAR(10)
);

ALTER TABLE Dosis ADD CONSTRAINT PK_Dosis PRIMARY KEY (cod_dosis,cod_medicamento);


CREATE TABLE Empleado (
 cod_empleado INT NOT NULL,
 cod_persona INT NOT NULL,
 cod_clinica INT NOT NULL,
 fecha_contratacion DATE NOT NULL,
 puesto VARCHAR(25) NOT NULL
);

ALTER TABLE Empleado ADD CONSTRAINT PK_Empleado PRIMARY KEY (cod_empleado,cod_persona,cod_clinica);


CREATE TABLE Expediente (
 cod_expediente INT NOT NULL,
 cod_persona INT NOT NULL,
 cod_clinica INT NOT NULL,
 fecha_creacion DATE NOT NULL
);

ALTER TABLE Expediente ADD CONSTRAINT PK_Expediente PRIMARY KEY (cod_expediente,cod_persona,cod_clinica);


CREATE TABLE Medico (
 cod_medico INT NOT NULL,
 cod_empleado INT NOT NULL,
 cod_persona INT NOT NULL,
 cod_clinica INT NOT NULL,
 especialidad VARCHAR(25)
);

ALTER TABLE Medico ADD CONSTRAINT PK_Medico PRIMARY KEY (cod_medico,cod_empleado,cod_persona,cod_clinica);


CREATE TABLE Paciente (
 cod_paciente INT NOT NULL,
 cod_persona INT NOT NULL,
 num_contribuyente INT
);

ALTER TABLE Paciente ADD CONSTRAINT PK_Paciente PRIMARY KEY (cod_paciente,cod_persona);


CREATE TABLE Receta (
 cod_receta INT NOT NULL,
 cod_dosis INT NOT NULL,
 cod_medicamento INT NOT NULL,
 fecha DATE
);

ALTER TABLE Receta ADD CONSTRAINT PK_Receta PRIMARY KEY (cod_receta,cod_dosis,cod_medicamento);


CREATE TABLE SignosVitales (
 cod_signos INT NOT NULL,
 cod_paciente INT NOT NULL,
 cod_persona INT NOT NULL,
 temperatura FLOAT(10),
 altura FLOAT(10),
 presion FLOAT(10),
 pulso FLOAT(10)
);

ALTER TABLE SignosVitales ADD CONSTRAINT PK_SignosVitales PRIMARY KEY (cod_signos,cod_paciente,cod_persona);


CREATE TABLE ConsultaMedica (
 cod_consulta INT NOT NULL,
 cod_expediente INT NOT NULL,
 cod_persona INT NOT NULL,
 cod_receta INT NOT NULL,
 cod_signos INT NOT NULL,
 cod_medico INT NOT NULL,
 cod_empleado INT NOT NULL,
 cod_clinica INT NOT NULL,
 cod_dosis INT NOT NULL,
 cod_medicamento INT NOT NULL,
 cod_paciente INT NOT NULL,
 fecha DATE,
 hora TIMESTAMP(5),
 diagnostico VARCHAR(500),
 sintomas VARCHAR(500)
);

ALTER TABLE ConsultaMedica ADD CONSTRAINT PK_ConsultaMedica PRIMARY KEY (cod_consulta,cod_expediente,cod_persona,cod_receta,cod_signos,cod_medico,cod_empleado,cod_clinica,cod_dosis,cod_medicamento,cod_paciente);


ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_0 FOREIGN KEY (cod_persona) REFERENCES Persona (cod_persona);


ALTER TABLE Dosis ADD CONSTRAINT FK_Dosis_0 FOREIGN KEY (cod_medicamento) REFERENCES Medicamento (cod_medicamento);


ALTER TABLE Empleado ADD CONSTRAINT FK_Empleado_0 FOREIGN KEY (cod_persona) REFERENCES Persona (cod_persona);
ALTER TABLE Empleado ADD CONSTRAINT FK_Empleado_1 FOREIGN KEY (cod_clinica) REFERENCES Clinica (cod_clinica);


ALTER TABLE Expediente ADD CONSTRAINT FK_Expediente_0 FOREIGN KEY (cod_persona) REFERENCES Persona (cod_persona);
ALTER TABLE Expediente ADD CONSTRAINT FK_Expediente_1 FOREIGN KEY (cod_clinica) REFERENCES Clinica (cod_clinica);


ALTER TABLE Medico ADD CONSTRAINT FK_Medico_0 FOREIGN KEY (cod_empleado,cod_persona,cod_clinica) REFERENCES Empleado (cod_empleado,cod_persona,cod_clinica);


ALTER TABLE Paciente ADD CONSTRAINT FK_Paciente_0 FOREIGN KEY (cod_persona) REFERENCES Persona (cod_persona);


ALTER TABLE Receta ADD CONSTRAINT FK_Receta_0 FOREIGN KEY (cod_dosis,cod_medicamento) REFERENCES Dosis (cod_dosis,cod_medicamento);


ALTER TABLE SignosVitales ADD CONSTRAINT FK_SignosVitales_0 FOREIGN KEY (cod_paciente,cod_persona) REFERENCES Paciente (cod_paciente,cod_persona);


ALTER TABLE ConsultaMedica ADD CONSTRAINT FK_ConsultaMedica_0 FOREIGN KEY (cod_expediente,cod_persona,cod_clinica) REFERENCES Expediente (cod_expediente,cod_persona,cod_clinica);
ALTER TABLE ConsultaMedica ADD CONSTRAINT FK_ConsultaMedica_1 FOREIGN KEY (cod_receta,cod_dosis,cod_medicamento) REFERENCES Receta (cod_receta,cod_dosis,cod_medicamento);
ALTER TABLE ConsultaMedica ADD CONSTRAINT FK_ConsultaMedica_2 FOREIGN KEY (cod_signos,cod_paciente,cod_persona) REFERENCES SignosVitales (cod_signos,cod_paciente,cod_persona);
ALTER TABLE ConsultaMedica ADD CONSTRAINT FK_ConsultaMedica_3 FOREIGN KEY (cod_medico,cod_empleado,cod_persona,cod_clinica) REFERENCES Medico (cod_medico,cod_empleado,cod_persona,cod_clinica);