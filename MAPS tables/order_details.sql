--------------------------------------------------------
--  File created - Tuesday-April-18-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ORDER_DETAILS
--------------------------------------------------------

  CREATE TABLE "sys"."ORDER_DETAILS" 
   (	"ORDER_DETAILS_ID" NUMBER(*,0), 
	"PRODUCT_ID" NUMBER(*,0), 
	"QUANTITY" NUMBER(*,0) DEFAULT 1, 
	"ORDER_ID" NUMBER(*,0), 
	"UEMAIL" VARCHAR2(30 BYTE), 
	"USER_ID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
REM INSERTING into sys.ORDER_DETAILS
SET DEFINE OFF;
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (8,5,5,1,null,null);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (11,5,5,1,'mani@gmail.com',null);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (12,2,5,1,'mani@gmail.com',null);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (23,7,3,1,'s@g.com',23);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (24,11,3,1,'s@g.com',23);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (28,6,4,1,'pranav@a.com',3);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (30,6,4,1,'pranav@a.com',3);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (44,5,3,1,'shaik@gmail.com',1);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (45,3,1,1,'shaik@gmail.com',1);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (46,9,2,1,'shaik@gmail.com',1);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (6,1,5,1,null,null);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (7,4,6,1,null,null);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (21,7,3,1,'s@g.com',23);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (22,11,5,1,'s@g.com',23);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (41,11,2,1,'shaik@gmail.com',1);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (42,1,5,1,'shaik@gmail.com',1);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (43,6,1,1,'shaik@gmail.com',1);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (1,1,4,1,null,null);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (25,4,2,1,'s@g.com',23);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (26,7,3,1,'s@g.com',23);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (27,11,4,1,'s@g.com',23);
Insert into sys.ORDER_DETAILS (ORDER_DETAILS_ID,PRODUCT_ID,QUANTITY,ORDER_ID,UEMAIL,USER_ID) values (29,6,4,1,'pranav@a.com',3);
--------------------------------------------------------
--  DDL for Index SYS_C0038234
--------------------------------------------------------

  CREATE UNIQUE INDEX "sys"."SYS_C0038234" ON "sys"."ORDER_DETAILS" ("ORDER_DETAILS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  Constraints for Table ORDER_DETAILS
--------------------------------------------------------

  ALTER TABLE "sys"."ORDER_DETAILS" ADD PRIMARY KEY ("ORDER_DETAILS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDER_DETAILS
--------------------------------------------------------

  ALTER TABLE "sys"."ORDER_DETAILS" ADD FOREIGN KEY ("PRODUCT_ID")
	  REFERENCES "sys"."PRODUCTS" ("PRODUCT_ID") ENABLE;
  ALTER TABLE "sys"."ORDER_DETAILS" ADD FOREIGN KEY ("ORDER_ID")
	  REFERENCES "sys"."ORDERS" ("ORDER_ID") ENABLE;
  ALTER TABLE "sys"."ORDER_DETAILS" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "sys"."USERS" ("USER_ID") ENABLE;
