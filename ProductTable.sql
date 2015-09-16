-- DROP TABLE product;

CREATE TABLE product
(
  id uuid NOT NULL,
  lookupcode character varying(255) NOT NULL DEFAULT '???'::character varying,
  price real NOT NULL DEFAULT -1.00,
  itemtype integer NOT NULL DEFAULT -1,
  cost real NOT NULL DEFAULT -1.00,
  quantity integer NOT NULL DEFAULT -1,
  reorderpoint integer NOT NULL DEFAULT 0,
  restocklevel integer NOT NULL DEFAULT 0,
  parentitem integer NOT NULL DEFAULT 0,
  extendeddescription text NOT NULL DEFAULT 'None',
  active integer NOT NULL DEFAULT 1,
  msrp integer NOT NULL DEFAULT 1,
  createdon timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT product_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);

ALTER TABLE product
  OWNER TO npcorg;

-- DROP INDEX ix_product_lookupcode;

COPY product
  FROM 'C:\Program Files\PostgreSQL\9.4\NPC_data.csv'
  WITH (FORMAT csv, ENCODING LATIN1);

CREATE INDEX ix_product_lookupcode
  ON product
  USING btree
  (lower(lookupcode::text) COLLATE pg_catalog."default");