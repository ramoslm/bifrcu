CREATE TABLE s_dim_codeconomico_std_codeconomico_src(
  codeconomico_bk VARCHAR(10),
  codeconomico_nombre VARCHAR(40),
  codeconomico_sort VARCHAR(30),
  batch_id BIGINT
);

ALTER TABLE s_dim_codeconomico_std_codeconomico_src OWNER TO etl_user;