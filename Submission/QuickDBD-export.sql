-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Card_holder" (
    "Id" int   NOT NULL,
    "Name" varchar(30)   NOT NULL,
    CONSTRAINT "pk_Card_holder" PRIMARY KEY (
        "Id"
     )
);

CREATE TABLE "Credit_card" (
    "Card" varchar(100)   NOT NULL,
    "Id_card_holder" int   NOT NULL,
    CONSTRAINT "pk_Credit_card" PRIMARY KEY (
        "Card"
     )
);

CREATE TABLE "Merchant_category" (
    "Id" int   NOT NULL,
    "Name" varchar(100)   NOT NULL,
    CONSTRAINT "pk_Merchant_category" PRIMARY KEY (
        "Id"
     )
);

CREATE TABLE "Merchant" (
    "Id" int   NOT NULL,
    "Name" varchar(100)   NOT NULL,
    "Id_merchant_category" int   NOT NULL,
    CONSTRAINT "pk_Merchant" PRIMARY KEY (
        "Id"
     )
);

CREATE TABLE "Transaction" (
    "Id" int   NOT NULL,
    "Date" timestamp   NOT NULL,
    "Amount" float   NOT NULL,
    "Card" varchar(100)   NOT NULL,
    "Id_merchant" int   NOT NULL
);

ALTER TABLE "Credit_card" ADD CONSTRAINT "fk_Credit_card_Id_card_holder" FOREIGN KEY("Id_card_holder")
REFERENCES "Card_holder" ("Id");

ALTER TABLE "Merchant" ADD CONSTRAINT "fk_Merchant_Id_merchant_category" FOREIGN KEY("Id_merchant_category")
REFERENCES "Merchant_category" ("Id");

ALTER TABLE "Transaction" ADD CONSTRAINT "fk_Transaction_Card" FOREIGN KEY("Card")
REFERENCES "Credit_card" ("Card");

ALTER TABLE "Transaction" ADD CONSTRAINT "fk_Transaction_Id_merchant" FOREIGN KEY("Id_merchant")
REFERENCES "Merchant" ("Id");

