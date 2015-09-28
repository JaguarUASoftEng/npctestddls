-- Table: "transactionentry table"

-- DROP TABLE "transactionentry table";

CREATE TABLE "transactionentry table"
(
  "Transaction ID" bigint,
  "Product ID" bigint,
  "Record ID" bigint NOT NULL,
  "Price" numeric,
  "Quantity" integer,
  CONSTRAINT "PK_recordID" PRIMARY KEY ("Record ID")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "transactionentry table"
  OWNER TO npcorg;
