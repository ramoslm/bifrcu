CREATE TABLE s_dim_fuente_std_fuente_src(
  fuente_bk VARCHAR(10),
  fuente_nombre VARCHAR(40),
  fuente_sort VARCHAR(30),
  batch_id BIGINT
);

ALTER TABLE s_dim_fuente_std_fuente_src OWNER TO etl_user;