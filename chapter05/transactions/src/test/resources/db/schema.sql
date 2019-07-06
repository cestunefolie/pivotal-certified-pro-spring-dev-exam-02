drop table PERSON if exists;

create table PERSON
(
  ID BIGINT IDENTITY PRIMARY KEY
, USERNAME VARCHAR2(50) NOT NULL
, FIRSTNAME VARCHAR2(50)
, LASTNAME VARCHAR2(50)
, PASSWORD VARCHAR2(50) NOT NULL
, HIRINGDATE DATE
, VERSION INT
, CREATED_AT VARCHAR2(50) NOT NULL
, MODIFIED_AT VARCHAR2(50) NOT NULL
, UNIQUE(USERNAME)
);

drop table DETECTIVE if exists;

create table DETECTIVE
(
  ID BIGINT IDENTITY PRIMARY KEY
, PERSON_ID INT NOT NULL
, BADGE_NUMBER VARCHAR2(50)
, RANK VARCHAR2(50)
, ARMED BOOLEAN
, STATUS VARCHAR2(50)
, VERSION INT
, CREATED_AT VARCHAR2(50) NOT NULL
, MODIFIED_AT VARCHAR2(50) NOT NULL
, UNIQUE(BADGE_NUMBER)
);

drop table STORAGE if exists;

create table STORAGE
(
    ID BIGINT IDENTITY PRIMARY KEY
    , NAME VARCHAR2(50)
    , LOCATION VARCHAR2(50)
    , VERSION INT
    , CREATED_AT VARCHAR2(50) NOT NULL
    , MODIFIED_AT VARCHAR2(50) NOT NULL
    , UNIQUE(NAME)
    , UNIQUE(LOCATION)
);