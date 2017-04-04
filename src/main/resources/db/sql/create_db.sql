CREATE SCHEMA myDb;

CREATE TABLE categories (
    CATEGORY_ID int NOT NULL AUTO_INCREMENT,
    NAME varchar(255) NOT NULL,
    IS_ROOT char(1) NOT NULL,
    UNIQUE (NAME),
    PRIMARY KEY (CATEGORY_ID)
);

CREATE TABLE manufacturers (
    MANUFACTURER_ID int NOT NULL AUTO_INCREMENT,
    NAME varchar(255) NOT NULL,
    UNIQUE (NAME),
    PRIMARY KEY (MANUFACTURER_ID)
);

CREATE TABLE products (
    ID int NOT NULL AUTO_INCREMENT,
    NAME varchar(255) NOT NULL,
    CATEGORY_ID int NOT NULL,
    MANUFACTURER_ID int NOT NULL,
    PRICE int NOT NULL,
    AVAILABLE CHAR(1) NOT NULL,
    DESCR varchar(655),
    PRIMARY KEY (ID),
);


CREATE TABLE manufacturers_categories (
    MANUFACTURER_ID int NOT NULL,
    CATEGORY_ID int NOT NULL,
);