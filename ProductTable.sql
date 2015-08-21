-- DROP TABLE product;

CREATE TABLE product
(
  id uuid NOT NULL,
  lookupcode character varying(255) NOT NULL DEFAULT ''::character varying,
  count integer NOT NULL DEFAULT 0,
  createdon timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT product_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE product
  OWNER TO npcorg;

-- DROP INDEX ix_product_lookupcode;

CREATE INDEX ix_product_lookupcode
  ON product
  USING btree
  (lower(lookupcode::text) COLLATE pg_catalog."default");