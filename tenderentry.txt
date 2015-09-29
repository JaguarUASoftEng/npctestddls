-- Table: tenderentry

-- DROP TABLE tenderentry;

CREATE TABLE tenderentry
(
  id uuid NOT NULL,
  transaction_id integar NOT NULL,
  tender_type text NOT NULL DEFAULT 'None',
  amount Double Percision NOT NULL DEFAULT -1.00,
  createdon timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT tenderenty_pkey PRIMARY KEY (id),
  CONSTRAINT tenderenty_fkey FOREIGN KEY (transaction_id)
  REFERENCES transactionentry("Transaction ID")
)
WITH
(
  OIDS=FALSE
);

ALTER TABLE "tenderentry"
  OWNER TO npcorg;
