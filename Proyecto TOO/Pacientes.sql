CREATE TABLE PACIENTES" 
   (	"ID_AFILIADO" VARCHAR2(5 BYTE) NOT NULL ENABLE, 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"APELLIDO" VARCHAR2(30 BYTE), 
	"FECHA_NACIMIENTO" DATE, 
	"CONYUGE" VARCHAR2(50 BYTE), 
	"DIRECCION" VARCHAR2(50 BYTE), 
	"DUI" VARCHAR2(20 BYTE), 
	"PROFESION" VARCHAR2(20 BYTE), 
	"ESTADO_CIVIL" VARCHAR2(35 BYTE) NOT NULL ENABLE, 
	"PADRE" VARCHAR2(20 BYTE), 
	"MADRE" VARCHAR2(20 BYTE), 
	 CONSTRAINT "TABLE1_PK" PRIMARY KEY ("ID_AFILIADO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

  INSERT INTO "ALE1"."PACIENTES" (ID_AFILIADO, NOMBRE, APELLIDO, DIRECCION, DUI, PROFESION, ESTADO_CIVIL, PADRE, MADRE) VALUES ('19710', 'Daniel', 'Díaz', 'San Salvador', '1234567', 'Estudiante', 'Soltero', 'Padre', 'Madre')

