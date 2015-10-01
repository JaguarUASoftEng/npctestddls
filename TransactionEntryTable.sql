-- Table: "transactionentry"

-- DROP TABLE "transactionentry";

CREATE TABLE "transactionentry"
(
  "Transaction ID" integer NOT NULL,
  "Product ID" uuid NOT NULL,
  "Record ID" integer NOT NULL,
  "Price" double precision NOT NULL,
  "Quantity" integer NOT NULL,
  CONSTRAINT "PK_recordID" PRIMARY KEY ("Record ID"),
  CONSTRAINT "FK_productID" FOREIGN KEY ("Product ID") REFERENCES product ("id"),
  CONSTRAINT "FK_transactionID" FOREIGN KEY ("Transaction ID") REFERENCES transaction ("Transaction ID")
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "transactionentry"
  OWNER TO npcorg;
