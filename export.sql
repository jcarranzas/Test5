--------------------------------------------------------
-- Archivo creado  - lunes-noviembre-14-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table WEBAPP_USUARIO_PERFIL
--------------------------------------------------------

  CREATE TABLE "WEBAPP_USUARIO_PERFIL" ("USUARIO_ID" NUMBER, "PERFIL_ID" NUMBER)
--------------------------------------------------------
--  DDL for Table WEBAPP_USUARIO
--------------------------------------------------------

  CREATE TABLE "WEBAPP_USUARIO" ("USUARIO_ID" NUMBER, "NOMBRE_USUARIO" VARCHAR2(20), "CONTRASENA" VARCHAR2(150), "NOMBRE_REAL" VARCHAR2(100), "CORREO" VARCHAR2(50), "ESTADO" NUMBER(2,0), "FECHACREACION" DATE, "FECHAMODIFICACION" DATE)
--------------------------------------------------------
--  DDL for Table WEBAPP_PERFIL
--------------------------------------------------------

  CREATE TABLE "WEBAPP_PERFIL" ("PERFIL_ID" NUMBER, "NOMBRE_PERFIL" VARCHAR2(50))
--------------------------------------------------------
--  DDL for Table WEBAPP_MENU
--------------------------------------------------------

  CREATE TABLE "WEBAPP_MENU" ("MENU_ID" NUMBER, "NOMBRE" VARCHAR2(50) DEFAULT NULL, "TIPO" VARCHAR2(4), "PERFIL_ID" NUMBER, "CODIGO_SUBMENU" NUMBER, "ESTADO" NUMBER(1,0), "URL" VARCHAR2(100), "ICON" VARCHAR2(50))
REM INSERTING into WEBAPP_USUARIO_PERFIL
SET DEFINE OFF;
Insert into WEBAPP_USUARIO_PERFIL (USUARIO_ID,PERFIL_ID) values ('1','1');
Insert into WEBAPP_USUARIO_PERFIL (USUARIO_ID,PERFIL_ID) values ('7','1');
Insert into WEBAPP_USUARIO_PERFIL (USUARIO_ID,PERFIL_ID) values ('9','104');
Insert into WEBAPP_USUARIO_PERFIL (USUARIO_ID,PERFIL_ID) values ('102','2');
REM INSERTING into WEBAPP_USUARIO
SET DEFINE OFF;
Insert into WEBAPP_USUARIO (USUARIO_ID,NOMBRE_USUARIO,CONTRASENA,NOMBRE_REAL,CORREO,ESTADO,FECHACREACION,FECHAMODIFICACION) values ('1','admin','$2a$10$qWh2/AFtHUxxgZygkRAdl.Qyu2EjuWBZL7Q8HwkecO.fcsz7aKxqS','Jhon caranza Silva','sdasda@hotmaol.do','1',to_date('05/07/16','DD/MM/RR'),to_date('11/07/16','DD/MM/RR'));
Insert into WEBAPP_USUARIO (USUARIO_ID,NOMBRE_USUARIO,CONTRASENA,NOMBRE_REAL,CORREO,ESTADO,FECHACREACION,FECHAMODIFICACION) values ('7','pedro123','$2a$10$CgXAj0/E.1/s/BivYHEHdeWNA1Y9E0D9cJ9VPZRJHnFhaKr.kX/MC','Pedro','pedro@gmail.com','0',to_date('05/07/16','DD/MM/RR'),to_date('21/07/16','DD/MM/RR'));
Insert into WEBAPP_USUARIO (USUARIO_ID,NOMBRE_USUARIO,CONTRASENA,NOMBRE_REAL,CORREO,ESTADO,FECHACREACION,FECHAMODIFICACION) values ('102','user','$2a$10$clFHxtKD3GyigCh7g7xnNevuiN5Ud63Z8.Xc3xG6qjpA5CCMg/Yp2','Alberto','cxvxc@gdgdg.com','1',to_date('06/07/16','DD/MM/RR'),to_date('12/07/16','DD/MM/RR'));
Insert into WEBAPP_USUARIO (USUARIO_ID,NOMBRE_USUARIO,CONTRASENA,NOMBRE_REAL,CORREO,ESTADO,FECHACREACION,FECHAMODIFICACION) values ('9','dsfsdfs','$2a$10$hNOnYJD1exCGhswAymSJSOuXKcET99Mx0DxB1KyjQomKVMusD8bYa','Juan','dasda@hotmai.huy','1',to_date('05/07/16','DD/MM/RR'),to_date('05/07/16','DD/MM/RR'));
REM INSERTING into WEBAPP_PERFIL
SET DEFINE OFF;
Insert into WEBAPP_PERFIL (PERFIL_ID,NOMBRE_PERFIL) values ('1','ADMIN');
Insert into WEBAPP_PERFIL (PERFIL_ID,NOMBRE_PERFIL) values ('104','DBA');
Insert into WEBAPP_PERFIL (PERFIL_ID,NOMBRE_PERFIL) values ('2','USER');
REM INSERTING into WEBAPP_MENU
SET DEFINE OFF;
Insert into WEBAPP_MENU (MENU_ID,NOMBRE,TIPO,PERFIL_ID,CODIGO_SUBMENU,ESTADO,URL,ICON) values ('110','Principal','I','1',null,'1','/principal','ui-icon-home');
Insert into WEBAPP_MENU (MENU_ID,NOMBRE,TIPO,PERFIL_ID,CODIGO_SUBMENU,ESTADO,URL,ICON) values ('201','PRUEBA','S','1',null,'1',null,null);
Insert into WEBAPP_MENU (MENU_ID,NOMBRE,TIPO,PERFIL_ID,CODIGO_SUBMENU,ESTADO,URL,ICON) values ('202','PRUEBA_ITEM','I','1','201','1','/test',null);
Insert into WEBAPP_MENU (MENU_ID,NOMBRE,TIPO,PERFIL_ID,CODIGO_SUBMENU,ESTADO,URL,ICON) values ('401','PRUEBA PROFA','I','1','201','1','ETERT',null);
Insert into WEBAPP_MENU (MENU_ID,NOMBRE,TIPO,PERFIL_ID,CODIGO_SUBMENU,ESTADO,URL,ICON) values ('402','JHON','S','2',null,'1',null,null);
Insert into WEBAPP_MENU (MENU_ID,NOMBRE,TIPO,PERFIL_ID,CODIGO_SUBMENU,ESTADO,URL,ICON) values ('113','Usuario','I','1','112','1','/usuarios',null);
Insert into WEBAPP_MENU (MENU_ID,NOMBRE,TIPO,PERFIL_ID,CODIGO_SUBMENU,ESTADO,URL,ICON) values ('112','Seguridad','S','1',null,'1',null,'ui-icon-locked');
Insert into WEBAPP_MENU (MENU_ID,NOMBRE,TIPO,PERFIL_ID,CODIGO_SUBMENU,ESTADO,URL,ICON) values ('120','Perfiles','I','1','112','1','/perfiles',null);
Insert into WEBAPP_MENU (MENU_ID,NOMBRE,TIPO,PERFIL_ID,CODIGO_SUBMENU,ESTADO,URL,ICON) values ('119','Menu','I','1','112','1','/confmenu',null);
--------------------------------------------------------
--  DDL for Index WEBAPP_USUARIO_PERFIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "WEBAPP_USUARIO_PERFIL_PK" ON "WEBAPP_USUARIO_PERFIL" ("USUARIO_ID", "PERFIL_ID")
--------------------------------------------------------
--  DDL for Index USUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "USUARIO_PK" ON "WEBAPP_USUARIO" ("USUARIO_ID")
--------------------------------------------------------
--  DDL for Index USUARIO_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "USUARIO_UK1" ON "WEBAPP_USUARIO" ("NOMBRE_USUARIO")
--------------------------------------------------------
--  DDL for Index WEBAPP_PERFIL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "WEBAPP_PERFIL_PK" ON "WEBAPP_PERFIL" ("PERFIL_ID")
--------------------------------------------------------
--  DDL for Index WEBAPP_PERFIL_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "WEBAPP_PERFIL_UK1" ON "WEBAPP_PERFIL" ("NOMBRE_PERFIL")
--------------------------------------------------------
--  DDL for Index SYS_C007203
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C007203" ON "WEBAPP_MENU" ("MENU_ID")
--------------------------------------------------------
--  Constraints for Table WEBAPP_USUARIO_PERFIL
--------------------------------------------------------

  ALTER TABLE "WEBAPP_USUARIO_PERFIL" ADD CONSTRAINT "WEBAPP_USUARIO_PERFIL_PK" PRIMARY KEY ("USUARIO_ID", "PERFIL_ID") ENABLE
  ALTER TABLE "WEBAPP_USUARIO_PERFIL" MODIFY ("PERFIL_ID" NOT NULL ENABLE)
  ALTER TABLE "WEBAPP_USUARIO_PERFIL" MODIFY ("USUARIO_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table WEBAPP_USUARIO
--------------------------------------------------------

  ALTER TABLE "WEBAPP_USUARIO" MODIFY ("FECHAMODIFICACION" NOT NULL ENABLE)
  ALTER TABLE "WEBAPP_USUARIO" MODIFY ("CORREO" NOT NULL ENABLE)
  ALTER TABLE "WEBAPP_USUARIO" MODIFY ("FECHACREACION" NOT NULL ENABLE)
  ALTER TABLE "WEBAPP_USUARIO" ADD CONSTRAINT "USUARIO_UK1" UNIQUE ("NOMBRE_USUARIO") ENABLE
  ALTER TABLE "WEBAPP_USUARIO" ADD CONSTRAINT "USUARIO_PK" PRIMARY KEY ("USUARIO_ID") ENABLE
  ALTER TABLE "WEBAPP_USUARIO" MODIFY ("ESTADO" NOT NULL ENABLE)
  ALTER TABLE "WEBAPP_USUARIO" MODIFY ("NOMBRE_REAL" NOT NULL ENABLE)
  ALTER TABLE "WEBAPP_USUARIO" MODIFY ("CONTRASENA" NOT NULL ENABLE)
  ALTER TABLE "WEBAPP_USUARIO" MODIFY ("NOMBRE_USUARIO" NOT NULL ENABLE)
  ALTER TABLE "WEBAPP_USUARIO" MODIFY ("USUARIO_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table WEBAPP_PERFIL
--------------------------------------------------------

  ALTER TABLE "WEBAPP_PERFIL" ADD CONSTRAINT "WEBAPP_PERFIL_UK1" UNIQUE ("NOMBRE_PERFIL") ENABLE
  ALTER TABLE "WEBAPP_PERFIL" ADD CONSTRAINT "WEBAPP_PERFIL_PK" PRIMARY KEY ("PERFIL_ID") ENABLE
  ALTER TABLE "WEBAPP_PERFIL" MODIFY ("NOMBRE_PERFIL" NOT NULL ENABLE)
  ALTER TABLE "WEBAPP_PERFIL" MODIFY ("PERFIL_ID" NOT NULL ENABLE)
--------------------------------------------------------
--  Constraints for Table WEBAPP_MENU
--------------------------------------------------------

  ALTER TABLE "WEBAPP_MENU" MODIFY ("ESTADO" NOT NULL ENABLE)
  ALTER TABLE "WEBAPP_MENU" MODIFY ("PERFIL_ID" NOT NULL ENABLE)
  ALTER TABLE "WEBAPP_MENU" MODIFY ("TIPO" NOT NULL ENABLE)
  ALTER TABLE "WEBAPP_MENU" MODIFY ("NOMBRE" NOT NULL ENABLE)
  ALTER TABLE "WEBAPP_MENU" ADD CONSTRAINT "SYS_C007203" PRIMARY KEY ("MENU_ID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table WEBAPP_USUARIO_PERFIL
--------------------------------------------------------

  ALTER TABLE "WEBAPP_USUARIO_PERFIL" ADD CONSTRAINT "WEBAPP_USUARIO_PERFIL_FK1" FOREIGN KEY ("USUARIO_ID") REFERENCES "WEBAPP_USUARIO" ("USUARIO_ID") ENABLE
  ALTER TABLE "WEBAPP_USUARIO_PERFIL" ADD CONSTRAINT "WEBAPP_USUARIO_PERFIL_FK2" FOREIGN KEY ("PERFIL_ID") REFERENCES "WEBAPP_PERFIL" ("PERFIL_ID") ENABLE
--------------------------------------------------------
--  Ref Constraints for Table WEBAPP_MENU
--------------------------------------------------------

  ALTER TABLE "WEBAPP_MENU" ADD CONSTRAINT "WEBAPP_MENU_FK1" FOREIGN KEY ("PERFIL_ID") REFERENCES "WEBAPP_PERFIL" ("PERFIL_ID") ENABLE
