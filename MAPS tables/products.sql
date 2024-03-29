--------------------------------------------------------
--  File created - Tuesday-April-18-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PRODUCTS
--------------------------------------------------------

  CREATE TABLE "sys"."PRODUCTS" 
   (	"PRODUCT_ID" NUMBER(*,0), 
	"PRODUCT_NAME" VARCHAR2(30 BYTE), 
	"PRICE" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
REM INSERTING into sys.PRODUCTS
SET DEFINE OFF;
Insert into sys.PRODUCTS (PRODUCT_ID,PRODUCT_NAME,PRICE) values (1,'Idlis',30);
Insert into sys.PRODUCTS (PRODUCT_ID,PRODUCT_NAME,PRICE) values (2,'Dosas',120);
Insert into sys.PRODUCTS (PRODUCT_ID,PRODUCT_NAME,PRICE) values (3,'Medhu Vada',150);
Insert into sys.PRODUCTS (PRODUCT_ID,PRODUCT_NAME,PRICE) values (4,'Maharaja Thali',150);
Insert into sys.PRODUCTS (PRODUCT_ID,PRODUCT_NAME,PRICE) values (5,'Gujarati Thali',160);
Insert into sys.PRODUCTS (PRODUCT_ID,PRODUCT_NAME,PRICE) values (6,'Sadhya',200);
Insert into sys.PRODUCTS (PRODUCT_ID,PRODUCT_NAME,PRICE) values (7,'Panneer Paratha',100);
Insert into sys.PRODUCTS (PRODUCT_ID,PRODUCT_NAME,PRICE) values (8,'Pulav',120);
Insert into sys.PRODUCTS (PRODUCT_ID,PRODUCT_NAME,PRICE) values (9,'South Indian Dinner',140);
Insert into sys.PRODUCTS (PRODUCT_ID,PRODUCT_NAME,PRICE) values (10,'Gulab Jamun',50);
Insert into sys.PRODUCTS (PRODUCT_ID,PRODUCT_NAME,PRICE) values (11,'Kheer',40);
Insert into sys.PRODUCTS (PRODUCT_ID,PRODUCT_NAME,PRICE) values (12,'Kulfi',30);
--------------------------------------------------------
--  DDL for Index SYS_C0038233
--------------------------------------------------------

  CREATE UNIQUE INDEX "sys"."SYS_C0038233" ON "sys"."PRODUCTS" ("PRODUCT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  Constraints for Table PRODUCTS
--------------------------------------------------------

  ALTER TABLE "sys"."PRODUCTS" ADD PRIMARY KEY ("PRODUCT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
