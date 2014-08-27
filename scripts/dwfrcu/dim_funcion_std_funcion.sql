CREATE TABLE dim_funcion_std_funcion(
  funcion_sk SERIAL NOT NULL,
  funcion_bk VARCHAR(10),
  funcion_nombre VARCHAR(40),
  funcion_sort character varying(30),
  funcion_check character varying(32),
  batch_id bigint,
  CONSTRAINT pk_dim_funcion_std_funcion PRIMARY KEY(funcion_sk),
  CONSTRAINT uk_dim_funcion_std_funcion UNIQUE(funcion_bk)
);

ALTER TABLE dim_funcion_std_funcion OWNER TO etl_user;