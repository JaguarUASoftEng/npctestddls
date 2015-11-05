-- Table: transactionentry

-- DROP TABLE transactionentry;

CREATE TABLE transactionentry
(
  Transaction_ID uuid NOT NULL,
  Product_ID uuid NOT NULL,
  Record_ID uuid NOT NULL,
  Price double precision NOT NULL,
  Quantity integer NOT NULL,
  CONSTRAINT PK_recordID PRIMARY KEY (Record_ID),
  CONSTRAINT FK_productID FOREIGN KEY (Product_ID) REFERENCES product (id),
  CONSTRAINT FK_transactionID FOREIGN KEY (Transaction_ID) REFERENCES transaction (r_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE transactionentry
  OWNER TO npcorg;
