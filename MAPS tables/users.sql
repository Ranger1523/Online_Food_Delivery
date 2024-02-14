--------------------------------------------------------
--  File created - Tuesday-April-18-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "USERS" 
   (	"USER_ID" NUMBER(*,0), 
	"UNAME" VARCHAR2(50 BYTE), 
	"UPWD" VARCHAR2(50 BYTE), 
	"UEMAIL" VARCHAR2(50 BYTE), 
	"UMOBILE" VARCHAR2(50 BYTE), 
	"FIRSTANSWER" VARCHAR2(50 BYTE), 
	"SECONDANSWER" VARCHAR2(50 BYTE), 
	"USERTYPE" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
REM INSERTING into sys.USERS
SET DEFINE OFF;
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (8,'panith','789','panni@gmail.com','377373773','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (11,'anish','123','anish@r.com','74747474','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (18,'madhu','123','madhu@g.com','7575757575757575','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (19,'madhu','123','madhu@g.com','74747474','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (21,'random','lol','random@email.com','7878787878','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (22,'random','lol','random@email.com','5454545454','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (41,'nayak','456','nayak@email.com','9494949','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (42,'sallu','123','admin@admin.com','83838383','Black','Harry','admin');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (1,'thesalmxn','Salman@20','shaik@gmail.com','9490881902','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (6,'sallu','Salman@20','shaik@gmail.com','4567543e','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (12,'reve','erb','ebev@fff','81828282','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (13,'reve','erb','ebev@fff','81828282','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (14,'bsb','erbaerb','sebe@dcc','erbaerb','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (15,'name','123','email@g.com','84494','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (61,'lol','lol','lol@lolcom','345','lol','lol','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (62,'anish','123','anish@r.com','757575','Blue','fapwfa;wih','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (63,'ashok','Ashok@123','ashok@gmail.com','758549','Blue','Tyagarajan','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (2,'sallu','123','a@b.com','789489390','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (3,'pranav','123','pranav@a.com','747474747','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (4,'sallu','111','siojdf@l.com','141143234','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (5,'sallu','222','afgervb@jm.com','22333444','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (7,'akhil','123','akki@gmail.com','81828282','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (10,'mani','123','mani@gmail.com','787878','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (16,'nikku','345','pra@nav.com','7878787878787878','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (17,'nikku','345','pra@nav.com','7878787878787878','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (24,'pannu','123','pannu@p.com','75757575','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (25,'pinnu','123','pinnu@p.com','848484','first','second','admin');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (82,'sallu','fcghjvcD2','s@g.com','74747474','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (9,'mani','123','mani@gmail.com','787878','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (23,'sallu','123','s@g.com','959','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (81,'madhu','asdfjdafsdfasdfs5A','m@t.com','22333444','first','second','user');
Insert into sys.USERS (USER_ID,UNAME,UPWD,UEMAIL,UMOBILE,FIRSTANSWER,SECONDANSWER,USERTYPE) values (101,'mad','lkjMad@123','mad@mad.com','709402384','first','second','user');
--------------------------------------------------------
--  DDL for Index SYS_C0038159
--------------------------------------------------------

  CREATE UNIQUE INDEX "sys"."SYS_C0038159" ON "sys"."USERS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "sys"."USERS" ADD PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA"  ENABLE;
