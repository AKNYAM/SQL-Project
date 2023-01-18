CREATE TABLE Card_holder (
    Id int   NOT NULL,
    Name varchar(30)   NOT NULL,
    CONSTRAINT "pk_Card_holder" PRIMARY KEY (
        Id
     )
);

CREATE TABLE Credit_card (
    Card varchar(100)   NOT NULL,
    Id_card_holder int   NOT NULL,
    CONSTRAINT pk_Credit_card PRIMARY KEY (
        Card
     )
);

CREATE TABLE Merchant_category (
    Id int   NOT NULL,
    Name varchar(100)   NOT NULL,
    CONSTRAINT pk_Merchant_category PRIMARY KEY (
        Id
     )
);

CREATE TABLE Merchant (
    Id int   NOT NULL,
    Name varchar(100)   NOT NULL,
    Id_merchant_category int   NOT NULL,
    CONSTRAINT pk_Merchant PRIMARY KEY (
        Id
     )
);

CREATE TABLE Transaction (
    Id int   NOT NULL,
    Date timestamp   NOT NULL,
    Amount float   NOT NULL,
    Card varchar(100)   NOT NULL,
    Id_merchant int   NOT NULL
);
