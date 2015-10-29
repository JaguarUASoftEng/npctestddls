--Transaction table
-- record ID -> Primary Key
-- cashier ID -> Foreign Key on the employee table
-- amount -> the total transaction amount
-- transactiontype -> sale, return, void
-- parent ID -> FK to a record on this table, may be empty
-- timestamp -> created on

-- Table: transaction

-- DROP TABLE transaction;

CREATE TABLE transaction
(
	R_ID INTEGER PRIMARY KEY,
	C_ID INTEGER,
	amount INTEGER,
	type VAR CHAR(256) CHECK (type IN ('sale','return','void')),
	createdon timestamp without time zone NOT NULL DEFAULT now(),
	FOREIGN KEY (C_ID) REFERENCES employee (ID)
	--P_ID INTEGER
	--FOREIGN KEY (P_D) REFERENCES 
	--Not sure how use a foreign key to reference another record on the same table
)
WITH (
  OIDS=FALSE
);
ALTER TABLE transaction
  OWNER TO npcorg;

