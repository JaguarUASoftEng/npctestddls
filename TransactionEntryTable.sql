-- Table: "transactionentry"

-- DROP TABLE "transactionentry";

CREATE TABLE "transactionentry"
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
ALTER TABLE "transactionentry"
  OWNER TO npcorg;
