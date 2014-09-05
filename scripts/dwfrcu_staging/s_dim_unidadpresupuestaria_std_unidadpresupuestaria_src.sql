CREATE TABLE s_dim_unidadpresupuestaria_std_unidadpresupuestaria_src(
  unidadpresupuestaria_unidadpresupuestaria VARCHAR(10),
  unidadpresupuestaria_subunidadpresupuestaria VARCHAR(10),
  unidadpresupuestaria_nombre VARCHAR(40),
  unidadpresupuestaria_sort character varying(30),
  batch_id bigint
);

ALTER TABLE s_dim_unidadpresupuestaria_std_unidadpresupuestaria_src OWNER TO etl_user;
