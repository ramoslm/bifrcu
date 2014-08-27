CREATE TABLE s_dim_funcion_std_funcion_src(
  funcion_bk VARCHAR(10),
  funcion_nombre VARCHAR(40),
  funcion_sort character varying(30),
  batch_id bigint
);

ALTER TABLE s_dim_funcion_std_funcion_src OWNER TO etl_user;