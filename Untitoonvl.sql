--------------------------------------------------------
--  파일이 생성됨 - 일요일-8월-25-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_ART
--------------------------------------------------------

   CREATE SEQUENCE  "UNTITOONVL"."SEQ_ART"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_BANK
--------------------------------------------------------

   CREATE SEQUENCE  "UNTITOONVL"."SEQ_BANK"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_EPISODE
--------------------------------------------------------

   CREATE SEQUENCE  "UNTITOONVL"."SEQ_EPISODE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQ_TEAM
--------------------------------------------------------

   CREATE SEQUENCE  "UNTITOONVL"."SEQ_TEAM"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ACCOUNT_GRADE
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."ACCOUNT_GRADE" 
   (	"USER_LEVEL" NUMBER, 
	"LEVEL_INFO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ACTIVE_TYPE
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."ACTIVE_TYPE" 
   (	"ACTIVE_INDEX" NUMBER, 
	"ACTIVE_INFO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ART_CATE
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."ART_CATE" 
   (	"ART_NUMBER" NUMBER, 
	"ART_TYPE" VARCHAR2(10 BYTE), 
	"ART_GENRE" VARCHAR2(10 BYTE), 
	"USER_ID" VARCHAR2(50 BYTE), 
	"TEAM_NUMBER" NUMBER, 
	"ART_NAME" VARCHAR2(100 BYTE), 
	"ART_THUMNAIL" VARCHAR2(100 BYTE), 
	"ART_PR" VARCHAR2(1000 BYTE), 
	"ART_COUNT" NUMBER DEFAULT 0, 
	"REG_ART" DATE DEFAULT sysdate, 
	"LIKED_COUNT" NUMBER DEFAULT 0, 
	"GOOD_COUNT" NUMBER DEFAULT 0, 
	"UPDATE_CYCLE" NUMBER, 
	"UPDATE_CYCLE_DM" VARCHAR2(5 BYTE) DEFAULT 'D', 
	"UPDATE_REST" VARCHAR2(5 BYTE) DEFAULT 'X', 
	"LAST_UPDATE_DAY" DATE DEFAULT sysdate, 
	"NEXT_UPDATE_DAY" DATE, 
	"UPDATE_ALERT" VARCHAR2(5 BYTE) DEFAULT 'X', 
	"ADULT" VARCHAR2(5 BYTE) DEFAULT 'X', 
	"COMPLETED" VARCHAR2(5 BYTE) DEFAULT 'X', 
	"DELETED" VARCHAR2(5 BYTE) DEFAULT 'X'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ART_FILES
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."ART_FILES" 
   (	"EPISODE" NUMBER, 
	"FILE_PATH" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ART_INFO
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."ART_INFO" 
   (	"ART_NUMBER" NUMBER, 
	"EPISODE" NUMBER DEFAULT NULL, 
	"EPISODE_SUBJECT" VARCHAR2(100 BYTE), 
	"THUMNAIL_PATH" VARCHAR2(100 BYTE), 
	"VIEW_COUNT" NUMBER DEFAULT 0, 
	"HEART_COUNT" NUMBER DEFAULT 0, 
	"NOTICE" VARCHAR2(200 BYTE), 
	"UPDATE_DATE" DATE DEFAULT sysdate, 
	"PRICE" NUMBER DEFAULT 100, 
	"CHARGE_PAY" NUMBER DEFAULT 0, 
	"FREE_PAY" NUMBER DEFAULT 0, 
	"COMPLETED" VARCHAR2(5 BYTE) DEFAULT 'X', 
	"OPENED" VARCHAR2(5 BYTE) DEFAULT 'X'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table AUTHOR_TEAM
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."AUTHOR_TEAM" 
   (	"TEAM_NUMBER" NUMBER, 
	"ART_TEAM" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table BANK_ACCOUNT
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."BANK_ACCOUNT" 
   (	"BANK_NUMBER" NUMBER, 
	"USER_ID" VARCHAR2(50 BYTE), 
	"BANK_NAME" VARCHAR2(10 BYTE), 
	"ACCOUNT_NUM" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CHARGE_LOG
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."CHARGE_LOG" 
   (	"USER_ID" VARCHAR2(50 BYTE), 
	"CHARGE_TYPE" VARCHAR2(5 BYTE), 
	"CHARGE_PRICE" NUMBER DEFAULT 0, 
	"BONUS_TYPE" VARCHAR2(5 BYTE), 
	"BONUS_PRICE" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table GOOD_LOG
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."GOOD_LOG" 
   (	"USER_ID" VARCHAR2(50 BYTE), 
	"ART_NUMBER" NUMBER, 
	"GOOD_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table HEART_LOG
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."HEART_LOG" 
   (	"USER_ID" VARCHAR2(50 BYTE), 
	"ART_NUMBER" NUMBER, 
	"EPISODE" NUMBER, 
	"HEART_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table LIKE_LOG
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."LIKE_LOG" 
   (	"USER_ID" VARCHAR2(50 BYTE), 
	"ART_NUMBER" NUMBER, 
	"LIKE_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PAY_LOG
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."PAY_LOG" 
   (	"USER_ID" VARCHAR2(50 BYTE), 
	"ART_NUMBER" NUMBER, 
	"EPISODE" NUMBER, 
	"PRICE" NUMBER, 
	"PAY_TYPE" VARCHAR2(20 BYTE), 
	"PAY_DATE" DATE DEFAULT sysdate, 
	"EXP_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SIGNUP_POINT_LOG
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."SIGNUP_POINT_LOG" 
   (	"USER_ID" VARCHAR2(50 BYTE), 
	"LOG_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TEAM_MEMBER
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."TEAM_MEMBER" 
   (	"TEAM_NUMBER" NUMBER, 
	"USER_ID" VARCHAR2(50 BYTE), 
	"TEAM_LEADER" VARCHAR2(5 BYTE) DEFAULT 'X'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USER_ACTIVE_LOG
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."USER_ACTIVE_LOG" 
   (	"USER_ID" VARCHAR2(50 BYTE), 
	"ACTIVE_INDEX" NUMBER, 
	"ACTIVE_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USER_INFO
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."USER_INFO" 
   (	"USER_ID" VARCHAR2(50 BYTE), 
	"USER_PW" VARCHAR2(50 BYTE), 
	"USER_NICK" VARCHAR2(20 BYTE), 
	"USER_NAME" VARCHAR2(20 BYTE), 
	"USER_EMAIL" VARCHAR2(50 BYTE), 
	"USER_BIRTH" DATE, 
	"USER_GENDER" VARCHAR2(5 BYTE), 
	"REG_DATE" DATE DEFAULT sysdate, 
	"CHARGE_MONEY" NUMBER DEFAULT 0, 
	"FREE_MONEY" NUMBER DEFAULT 0, 
	"POINT" NUMBER DEFAULT 0, 
	"TOTAL_ATTEND_DAYS" NUMBER DEFAULT 0, 
	"CONT_ATTEND_DAYS" NUMBER DEFAULT 0, 
	"LAST_ATTEND_DATE" DATE, 
	"ADULT" VARCHAR2(5 BYTE) DEFAULT 'X', 
	"USER_LEVEL" NUMBER DEFAULT 4, 
	"DELETED" VARCHAR2(5 BYTE) DEFAULT 'X', 
	"DEL_DATE" DATE, 
	"EXP_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USER_INFO_COPY
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."USER_INFO_COPY" 
   (	"USER_ID" VARCHAR2(50 BYTE), 
	"USER_PW" VARCHAR2(50 BYTE), 
	"USER_NICK" VARCHAR2(20 BYTE), 
	"USER_NAME" VARCHAR2(20 BYTE), 
	"USER_EMAIL" VARCHAR2(50 BYTE), 
	"USER_BIRTH" DATE, 
	"USER_GENDER" VARCHAR2(5 BYTE), 
	"REG_DATE" DATE, 
	"CHARGE_MONEY" NUMBER, 
	"FREE_MONEY" NUMBER, 
	"POINT" NUMBER, 
	"TOTAL_ATTEND_DAYS" NUMBER, 
	"CONT_ATTEND_DAYS" NUMBER, 
	"LAST_ATTEND_DATE" DATE, 
	"ADULT" VARCHAR2(5 BYTE), 
	"USER_LEVEL" NUMBER, 
	"DELETED" VARCHAR2(5 BYTE), 
	"DEL_DATE" DATE, 
	"EXP_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table VIEW_LOG
--------------------------------------------------------

  CREATE TABLE "UNTITOONVL"."VIEW_LOG" 
   (	"USER_ID" VARCHAR2(50 BYTE), 
	"ART_NUMBER" NUMBER, 
	"EPISODE" NUMBER, 
	"VIEW_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into UNTITOONVL.ACCOUNT_GRADE
SET DEFINE OFF;
Insert into UNTITOONVL.ACCOUNT_GRADE (USER_LEVEL,LEVEL_INFO) values (0,'admin');
Insert into UNTITOONVL.ACCOUNT_GRADE (USER_LEVEL,LEVEL_INFO) values (1,'staff');
Insert into UNTITOONVL.ACCOUNT_GRADE (USER_LEVEL,LEVEL_INFO) values (2,'cont_author');
Insert into UNTITOONVL.ACCOUNT_GRADE (USER_LEVEL,LEVEL_INFO) values (3,'author');
Insert into UNTITOONVL.ACCOUNT_GRADE (USER_LEVEL,LEVEL_INFO) values (4,'common');
REM INSERTING into UNTITOONVL.ACTIVE_TYPE
SET DEFINE OFF;
Insert into UNTITOONVL.ACTIVE_TYPE (ACTIVE_INDEX,ACTIVE_INFO) values (10,'charge');
Insert into UNTITOONVL.ACTIVE_TYPE (ACTIVE_INDEX,ACTIVE_INFO) values (15,'refund');
Insert into UNTITOONVL.ACTIVE_TYPE (ACTIVE_INDEX,ACTIVE_INFO) values (20,'pay');
Insert into UNTITOONVL.ACTIVE_TYPE (ACTIVE_INDEX,ACTIVE_INFO) values (25,'view');
Insert into UNTITOONVL.ACTIVE_TYPE (ACTIVE_INDEX,ACTIVE_INFO) values (30,'heart');
Insert into UNTITOONVL.ACTIVE_TYPE (ACTIVE_INDEX,ACTIVE_INFO) values (40,'like');
Insert into UNTITOONVL.ACTIVE_TYPE (ACTIVE_INDEX,ACTIVE_INFO) values (50,'good');
Insert into UNTITOONVL.ACTIVE_TYPE (ACTIVE_INDEX,ACTIVE_INFO) values (60,'regist');
Insert into UNTITOONVL.ACTIVE_TYPE (ACTIVE_INDEX,ACTIVE_INFO) values (65,'upload');
REM INSERTING into UNTITOONVL.ART_CATE
SET DEFINE OFF;
REM INSERTING into UNTITOONVL.ART_FILES
SET DEFINE OFF;
REM INSERTING into UNTITOONVL.ART_INFO
SET DEFINE OFF;
REM INSERTING into UNTITOONVL.AUTHOR_TEAM
SET DEFINE OFF;
REM INSERTING into UNTITOONVL.BANK_ACCOUNT
SET DEFINE OFF;
REM INSERTING into UNTITOONVL.CHARGE_LOG
SET DEFINE OFF;
REM INSERTING into UNTITOONVL.GOOD_LOG
SET DEFINE OFF;
REM INSERTING into UNTITOONVL.HEART_LOG
SET DEFINE OFF;
REM INSERTING into UNTITOONVL.LIKE_LOG
SET DEFINE OFF;
REM INSERTING into UNTITOONVL.PAY_LOG
SET DEFINE OFF;
REM INSERTING into UNTITOONVL.SIGNUP_POINT_LOG
SET DEFINE OFF;
REM INSERTING into UNTITOONVL.TEAM_MEMBER
SET DEFINE OFF;
REM INSERTING into UNTITOONVL.USER_ACTIVE_LOG
SET DEFINE OFF;
REM INSERTING into UNTITOONVL.USER_INFO
SET DEFINE OFF;
Insert into UNTITOONVL.USER_INFO (USER_ID,USER_PW,USER_NICK,USER_NAME,USER_EMAIL,USER_BIRTH,USER_GENDER,REG_DATE,CHARGE_MONEY,FREE_MONEY,POINT,TOTAL_ATTEND_DAYS,CONT_ATTEND_DAYS,LAST_ATTEND_DATE,ADULT,USER_LEVEL,DELETED,DEL_DATE,EXP_DATE) values ('common1','1234','cmn1','유저1','common1@email.com',to_date('1990-10-10','RRRR-MM-DD'),'M',to_date('2019-04-16','RRRR-MM-DD'),0,0,2000,0,0,null,'X',4,'X',null,null);
Insert into UNTITOONVL.USER_INFO (USER_ID,USER_PW,USER_NICK,USER_NAME,USER_EMAIL,USER_BIRTH,USER_GENDER,REG_DATE,CHARGE_MONEY,FREE_MONEY,POINT,TOTAL_ATTEND_DAYS,CONT_ATTEND_DAYS,LAST_ATTEND_DATE,ADULT,USER_LEVEL,DELETED,DEL_DATE,EXP_DATE) values ('author1','1234','athr1','작가1','author1@email.com',to_date('1991-11-11','RRRR-MM-DD'),'F',to_date('2019-04-16','RRRR-MM-DD'),5000,2000,30000,0,0,null,'X',3,'X',null,null);
Insert into UNTITOONVL.USER_INFO (USER_ID,USER_PW,USER_NICK,USER_NAME,USER_EMAIL,USER_BIRTH,USER_GENDER,REG_DATE,CHARGE_MONEY,FREE_MONEY,POINT,TOTAL_ATTEND_DAYS,CONT_ATTEND_DAYS,LAST_ATTEND_DATE,ADULT,USER_LEVEL,DELETED,DEL_DATE,EXP_DATE) values ('staff1','1234','stf1','스태프1','staff1@email.com',to_date('1992-12-12','RRRR-MM-DD'),'E',to_date('2019-04-16','RRRR-MM-DD'),120000,8000,245000,0,0,null,'X',1,'X',null,null);
REM INSERTING into UNTITOONVL.USER_INFO_COPY
SET DEFINE OFF;
Insert into UNTITOONVL.USER_INFO_COPY (USER_ID,USER_PW,USER_NICK,USER_NAME,USER_EMAIL,USER_BIRTH,USER_GENDER,REG_DATE,CHARGE_MONEY,FREE_MONEY,POINT,TOTAL_ATTEND_DAYS,CONT_ATTEND_DAYS,LAST_ATTEND_DATE,ADULT,USER_LEVEL,DELETED,DEL_DATE,EXP_DATE) values ('common1','1234','cmn1','유저1','common1@email.com',to_date('1990-10-10','RRRR-MM-DD'),'M',to_date('2019-04-16','RRRR-MM-DD'),0,0,2000,0,0,null,'X',4,'X',null,null);
Insert into UNTITOONVL.USER_INFO_COPY (USER_ID,USER_PW,USER_NICK,USER_NAME,USER_EMAIL,USER_BIRTH,USER_GENDER,REG_DATE,CHARGE_MONEY,FREE_MONEY,POINT,TOTAL_ATTEND_DAYS,CONT_ATTEND_DAYS,LAST_ATTEND_DATE,ADULT,USER_LEVEL,DELETED,DEL_DATE,EXP_DATE) values ('author1','1234','athr1','작가1','author1@email.com',to_date('1991-11-11','RRRR-MM-DD'),'F',to_date('2019-04-16','RRRR-MM-DD'),5000,2000,30000,0,0,null,'X',3,'X',null,null);
Insert into UNTITOONVL.USER_INFO_COPY (USER_ID,USER_PW,USER_NICK,USER_NAME,USER_EMAIL,USER_BIRTH,USER_GENDER,REG_DATE,CHARGE_MONEY,FREE_MONEY,POINT,TOTAL_ATTEND_DAYS,CONT_ATTEND_DAYS,LAST_ATTEND_DATE,ADULT,USER_LEVEL,DELETED,DEL_DATE,EXP_DATE) values ('staff1','1234','stf1','스태프1','staff1@email.com',to_date('1992-12-12','RRRR-MM-DD'),'E',to_date('2019-04-16','RRRR-MM-DD'),120000,8000,245000,0,0,null,'X',1,'X',null,null);
REM INSERTING into UNTITOONVL.VIEW_LOG
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C007206
--------------------------------------------------------

  CREATE UNIQUE INDEX "UNTITOONVL"."SYS_C007206" ON "UNTITOONVL"."ACCOUNT_GRADE" ("USER_LEVEL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007216
--------------------------------------------------------

  CREATE UNIQUE INDEX "UNTITOONVL"."SYS_C007216" ON "UNTITOONVL"."USER_INFO" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007219
--------------------------------------------------------

  CREATE UNIQUE INDEX "UNTITOONVL"."SYS_C007219" ON "UNTITOONVL"."AUTHOR_TEAM" ("TEAM_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007236
--------------------------------------------------------

  CREATE UNIQUE INDEX "UNTITOONVL"."SYS_C007236" ON "UNTITOONVL"."ART_CATE" ("ART_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007243
--------------------------------------------------------

  CREATE UNIQUE INDEX "UNTITOONVL"."SYS_C007243" ON "UNTITOONVL"."ART_INFO" ("EPISODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007247
--------------------------------------------------------

  CREATE UNIQUE INDEX "UNTITOONVL"."SYS_C007247" ON "UNTITOONVL"."BANK_ACCOUNT" ("BANK_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007268
--------------------------------------------------------

  CREATE UNIQUE INDEX "UNTITOONVL"."SYS_C007268" ON "UNTITOONVL"."ACTIVE_TYPE" ("ACTIVE_INDEX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table ACCOUNT_GRADE
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."ACCOUNT_GRADE" ADD PRIMARY KEY ("USER_LEVEL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "UNTITOONVL"."ACCOUNT_GRADE" MODIFY ("LEVEL_INFO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ACTIVE_TYPE
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."ACTIVE_TYPE" ADD PRIMARY KEY ("ACTIVE_INDEX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "UNTITOONVL"."ACTIVE_TYPE" MODIFY ("ACTIVE_INFO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ART_CATE
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."ART_CATE" ADD PRIMARY KEY ("ART_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "UNTITOONVL"."ART_CATE" ADD CHECK (deleted in('X','O')) ENABLE;
  ALTER TABLE "UNTITOONVL"."ART_CATE" ADD CHECK (completed in('X','O')) ENABLE;
  ALTER TABLE "UNTITOONVL"."ART_CATE" ADD CHECK (adult in('X', 'O')) ENABLE;
  ALTER TABLE "UNTITOONVL"."ART_CATE" ADD CHECK (update_alert in('X','O')) ENABLE;
  ALTER TABLE "UNTITOONVL"."ART_CATE" ADD CHECK (update_rest in('X','O')) ENABLE;
  ALTER TABLE "UNTITOONVL"."ART_CATE" ADD CHECK (update_cycle_dm in('D','M')) ENABLE;
  ALTER TABLE "UNTITOONVL"."ART_CATE" ADD CHECK (art_type in('M','N')) ENABLE;
  ALTER TABLE "UNTITOONVL"."ART_CATE" MODIFY ("UPDATE_CYCLE" NOT NULL ENABLE);
  ALTER TABLE "UNTITOONVL"."ART_CATE" MODIFY ("ART_NAME" NOT NULL ENABLE);
  ALTER TABLE "UNTITOONVL"."ART_CATE" MODIFY ("ART_GENRE" NOT NULL ENABLE);
  ALTER TABLE "UNTITOONVL"."ART_CATE" MODIFY ("ART_TYPE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ART_FILES
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."ART_FILES" MODIFY ("FILE_PATH" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ART_INFO
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."ART_INFO" ADD PRIMARY KEY ("EPISODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "UNTITOONVL"."ART_INFO" ADD CHECK (opened in('X','O')) ENABLE;
  ALTER TABLE "UNTITOONVL"."ART_INFO" ADD CHECK (completed in('X','O')) ENABLE;
  ALTER TABLE "UNTITOONVL"."ART_INFO" MODIFY ("EPISODE_SUBJECT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table AUTHOR_TEAM
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."AUTHOR_TEAM" ADD PRIMARY KEY ("TEAM_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "UNTITOONVL"."AUTHOR_TEAM" MODIFY ("ART_TEAM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BANK_ACCOUNT
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."BANK_ACCOUNT" ADD PRIMARY KEY ("BANK_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "UNTITOONVL"."BANK_ACCOUNT" MODIFY ("ACCOUNT_NUM" NOT NULL ENABLE);
  ALTER TABLE "UNTITOONVL"."BANK_ACCOUNT" MODIFY ("BANK_NAME" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CHARGE_LOG
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."CHARGE_LOG" ADD CHECK (bonus_type in('C','F','P','X')) ENABLE;
  ALTER TABLE "UNTITOONVL"."CHARGE_LOG" ADD CHECK (charge_type in('C','F','P')) ENABLE;
--------------------------------------------------------
--  Constraints for Table PAY_LOG
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."PAY_LOG" ADD CHECK (pay_type in('charge', 'free')) ENABLE;
--------------------------------------------------------
--  Constraints for Table TEAM_MEMBER
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."TEAM_MEMBER" ADD CHECK (team_leader in('X','O')) ENABLE;
  ALTER TABLE "UNTITOONVL"."TEAM_MEMBER" MODIFY ("USER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USER_INFO
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."USER_INFO" ADD PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "UNTITOONVL"."USER_INFO" ADD CHECK (deleted in('X','O')) ENABLE;
  ALTER TABLE "UNTITOONVL"."USER_INFO" ADD CHECK (adult in('X','O')) ENABLE;
  ALTER TABLE "UNTITOONVL"."USER_INFO" ADD CHECK (user_gender in('F','M','E')) ENABLE;
  ALTER TABLE "UNTITOONVL"."USER_INFO" MODIFY ("USER_GENDER" NOT NULL ENABLE);
  ALTER TABLE "UNTITOONVL"."USER_INFO" MODIFY ("USER_BIRTH" NOT NULL ENABLE);
  ALTER TABLE "UNTITOONVL"."USER_INFO" MODIFY ("USER_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "UNTITOONVL"."USER_INFO" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "UNTITOONVL"."USER_INFO" MODIFY ("USER_NICK" NOT NULL ENABLE);
  ALTER TABLE "UNTITOONVL"."USER_INFO" MODIFY ("USER_PW" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USER_INFO_COPY
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."USER_INFO_COPY" MODIFY ("USER_GENDER" NOT NULL ENABLE);
  ALTER TABLE "UNTITOONVL"."USER_INFO_COPY" MODIFY ("USER_BIRTH" NOT NULL ENABLE);
  ALTER TABLE "UNTITOONVL"."USER_INFO_COPY" MODIFY ("USER_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "UNTITOONVL"."USER_INFO_COPY" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "UNTITOONVL"."USER_INFO_COPY" MODIFY ("USER_NICK" NOT NULL ENABLE);
  ALTER TABLE "UNTITOONVL"."USER_INFO_COPY" MODIFY ("USER_PW" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ART_CATE
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."ART_CATE" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "UNTITOONVL"."USER_INFO" ("USER_ID") ENABLE;
  ALTER TABLE "UNTITOONVL"."ART_CATE" ADD FOREIGN KEY ("TEAM_NUMBER")
	  REFERENCES "UNTITOONVL"."AUTHOR_TEAM" ("TEAM_NUMBER") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ART_FILES
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."ART_FILES" ADD FOREIGN KEY ("EPISODE")
	  REFERENCES "UNTITOONVL"."ART_INFO" ("EPISODE") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ART_INFO
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."ART_INFO" ADD FOREIGN KEY ("ART_NUMBER")
	  REFERENCES "UNTITOONVL"."ART_CATE" ("ART_NUMBER") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BANK_ACCOUNT
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."BANK_ACCOUNT" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "UNTITOONVL"."USER_INFO" ("USER_ID") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CHARGE_LOG
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."CHARGE_LOG" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "UNTITOONVL"."USER_INFO" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GOOD_LOG
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."GOOD_LOG" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "UNTITOONVL"."USER_INFO" ("USER_ID") ENABLE;
  ALTER TABLE "UNTITOONVL"."GOOD_LOG" ADD FOREIGN KEY ("ART_NUMBER")
	  REFERENCES "UNTITOONVL"."ART_CATE" ("ART_NUMBER") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table HEART_LOG
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."HEART_LOG" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "UNTITOONVL"."USER_INFO" ("USER_ID") ENABLE;
  ALTER TABLE "UNTITOONVL"."HEART_LOG" ADD FOREIGN KEY ("ART_NUMBER")
	  REFERENCES "UNTITOONVL"."ART_CATE" ("ART_NUMBER") ENABLE;
  ALTER TABLE "UNTITOONVL"."HEART_LOG" ADD FOREIGN KEY ("EPISODE")
	  REFERENCES "UNTITOONVL"."ART_INFO" ("EPISODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LIKE_LOG
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."LIKE_LOG" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "UNTITOONVL"."USER_INFO" ("USER_ID") ENABLE;
  ALTER TABLE "UNTITOONVL"."LIKE_LOG" ADD FOREIGN KEY ("ART_NUMBER")
	  REFERENCES "UNTITOONVL"."ART_CATE" ("ART_NUMBER") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PAY_LOG
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."PAY_LOG" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "UNTITOONVL"."USER_INFO" ("USER_ID") ENABLE;
  ALTER TABLE "UNTITOONVL"."PAY_LOG" ADD FOREIGN KEY ("ART_NUMBER")
	  REFERENCES "UNTITOONVL"."ART_CATE" ("ART_NUMBER") ENABLE;
  ALTER TABLE "UNTITOONVL"."PAY_LOG" ADD FOREIGN KEY ("EPISODE")
	  REFERENCES "UNTITOONVL"."ART_INFO" ("EPISODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SIGNUP_POINT_LOG
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."SIGNUP_POINT_LOG" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "UNTITOONVL"."USER_INFO" ("USER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TEAM_MEMBER
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."TEAM_MEMBER" ADD FOREIGN KEY ("TEAM_NUMBER")
	  REFERENCES "UNTITOONVL"."AUTHOR_TEAM" ("TEAM_NUMBER") ON DELETE SET NULL ENABLE;
  ALTER TABLE "UNTITOONVL"."TEAM_MEMBER" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "UNTITOONVL"."USER_INFO" ("USER_ID") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_ACTIVE_LOG
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."USER_ACTIVE_LOG" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "UNTITOONVL"."USER_INFO" ("USER_ID") ENABLE;
  ALTER TABLE "UNTITOONVL"."USER_ACTIVE_LOG" ADD FOREIGN KEY ("ACTIVE_INDEX")
	  REFERENCES "UNTITOONVL"."ACTIVE_TYPE" ("ACTIVE_INDEX") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USER_INFO
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."USER_INFO" ADD FOREIGN KEY ("USER_LEVEL")
	  REFERENCES "UNTITOONVL"."ACCOUNT_GRADE" ("USER_LEVEL") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table VIEW_LOG
--------------------------------------------------------

  ALTER TABLE "UNTITOONVL"."VIEW_LOG" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "UNTITOONVL"."USER_INFO" ("USER_ID") ENABLE;
  ALTER TABLE "UNTITOONVL"."VIEW_LOG" ADD FOREIGN KEY ("ART_NUMBER")
	  REFERENCES "UNTITOONVL"."ART_CATE" ("ART_NUMBER") ENABLE;
  ALTER TABLE "UNTITOONVL"."VIEW_LOG" ADD FOREIGN KEY ("EPISODE")
	  REFERENCES "UNTITOONVL"."ART_INFO" ("EPISODE") ENABLE;
