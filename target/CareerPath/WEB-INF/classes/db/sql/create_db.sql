CREATE SCHEMA myDb;

CREATE TABLE categories (
    CATEGORY_ID int NOT NULL AUTO_INCREMENT,
    NAME varchar(255) NOT NULL,
    UNIQUE (NAME),
    PRIMARY KEY (CATEGORY_ID)
);

CREATE TABLE topics (
    TOPIC_ID int NOT NULL AUTO_INCREMENT,
    NAME varchar(255) NOT NULL,
    CATEGORY_ID int NOT NULL,
    UNIQUE (NAME),
    PRIMARY KEY (TOPIC_ID)
);

CREATE TABLE positions (
    POSITION_ID int NOT NULL AUTO_INCREMENT,
    NAME varchar(255) NOT NULL,
    UNIQUE (NAME),
    PRIMARY KEY (POSITION_ID)
);

CREATE TABLE skills (
    SKILL_ID int NOT NULL AUTO_INCREMENT,
    NAME varchar(655) NOT NULL,
    TOPIC_ID int NOT NULL,
    POSITION_ID int NOT NULL,
    DESCR varchar(655),
    PRIMARY KEY (SKILL_ID),
);

