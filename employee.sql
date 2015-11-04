-- Table: employee

-- DROP TABLE employee;

CREATE TABLE employee
(
  record_id uuid NOT NULL,
  first_name character varying(30),
  last_name character varying(30),
  employee_id integer,
  active boolean,
  classification character varying(30),
  manager uuid,
  password character varying(30),
  createdon timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT employee_pkey PRIMARY KEY (record_id),
  CONSTRAINT employee_classification_check CHECK (classification::text = 'general manager'::text OR classification::text = 'shift manager'::text OR classification::text = 'cashier'::text)
  CONSTRAINT manager_fkey FOREIGN KEY (manager) REFERENCES employee (record_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE employee
  OWNER TO npcorg;
