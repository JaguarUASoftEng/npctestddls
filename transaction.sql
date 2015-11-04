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
	R_ID uuid PRIMARY KEY,
	C_ID uuid,
	P_ID uuid,
	amount double precision,
	transactiontype VARCHAR(256) CHECK (transactiontype IN ('sale','return','void')),
	createdon timestamp without time zone NOT NULL DEFAULT now(),
	FOREIGN KEY (C_ID) REFERENCES employee (record_id),
	FOREIGN KEY (P_ID) REFERENCES transaction (R_ID)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE transaction
  OWNER TO npcorg;

