-- DROP TABLE s_dim_unidadpresupuestaria_std_unidadpresupuestaria_src;

CREATE TABLE s_dim_unidadpresupuestaria_std_unidadpresupuestaria_src(
  unidadpresupuestaria_unidadpresupuestaria SMALLINT,
  unidadpresupuestaria_subunidadpresupuestaria INT,
  unidadpresupuestaria_nombre VARCHAR(50),
  unidadpresupuestaria_sort character varying(30),
  batch_id bigint
);

ALTER TABLE s_dim_unidadpresupuestaria_std_unidadpresupuestaria_src OWNER TO etl_user;
