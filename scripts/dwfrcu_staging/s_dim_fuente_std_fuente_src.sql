CREATE TABLE s_dim_fuente_std_fuente_src(
  fuente_bk VARCHAR(10),
  fuente_nombre VARCHAR(40),
  banco_sort character varying(30),
  batch_id bigint
);

ALTER TABLE s_dim_fuente_std_fuente_src OWNER TO etl_user;