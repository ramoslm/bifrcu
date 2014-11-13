-- Table: dim_unidadpresupuestaria_std_unidadpresupuestaria

-- DROP TABLE dim_unidadpresupuestaria_std_unidadpresupuestaria;

CREATE TABLE dim_unidadpresupuestaria_std_unidadpresupuestaria
(
  unidadpresupuestaria_sk serial NOT NULL,
  unidadpresupuestaria_unidadpresupuestaria smallint,
  unidadpresupuestaria_subunidadpresupuestaria int,
  unidadpresupuestaria_nombre character varying(50),
  unidadpresupuestaria_sort character varying(30),
  unidadpresupuestaria_check character varying(32),
  batch_id bigint,
  CONSTRAINT pk_dim_unidadpresupuestaria_std_unidadpresupuestaria PRIMARY KEY (unidadpresupuestaria_sk),
  CONSTRAINT uk_dim_unidadpresupuestaria_std_unidadpresupuestaria UNIQUE (unidadpresupuestaria_unidadpresupuestaria,unidadpresupuestaria_subunidadpresupuestaria)
)
WITH (
  OIDS=FALSE
);

ALTER TABLE dim_unidadpresupuestaria_std_unidadpresupuestaria
  OWNER TO etl_user;

INSERT INTO dim_unidadpresupuestaria_std_unidadpresupuestaria(unidadpresupuestaria_sk, unidadpresupuestaria_unidadpresupuestaria, unidadpresupuestaria_subunidadpresupuestaria, unidadpresupuestaria_nombre,unidadpresupuestaria_sort,unidadpresupuestaria_check)
VALUES (-1, -1, -1, 'Desconocido','DESC', 'ZZZZZZZZZZZZZ');

INSERT INTO dim_unidadpresupuestaria_std_unidadpresupuestaria(unidadpresupuestaria_sk, unidadpresupuestaria_unidadpresupuestaria, unidadpresupuestaria_subunidadpresupuestaria, unidadpresupuestaria_nombre,unidadpresupuestaria_sort,unidadpresupuestaria_check)
VALUES (-2, -2, -2, 'No Aplica' ,'NA', 'ZZZZZZZZZZZZZ');