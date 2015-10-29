-- Table: employee

-- DROP TABLE employee;

CREATE TABLE employee
(
  record_id integer NOT NULL,
  first_name character varying(30),
  last_name character varying(30),
  employee_id integer,
  active character varying(5),
  classification character varying(30),
  manager character varying(30),
  password character varying(30),
  createdon timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT employee_pkey PRIMARY KEY (record_id),
  CONSTRAINT employee_classification_check CHECK (classification::text = 'general manager'::text OR classification::text = 'shift manager'::text OR classification::text = 'cashier'::text)
--Not sure how to make manager a foreign key
--that references a record on its own table
)
WITH (
  OIDS=FALSE
);
ALTER TABLE employee
  OWNER TO npcorg;
