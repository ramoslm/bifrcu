CREATE TABLE s_dim_objetogasto_std_objetogasto_src(
  objetogasto_inciso SMALLINT,
  objetogasto_nombre VARCHAR(40),
  objetogasto_principal SMALLINT,
  objetogasto_parcial SMALLINT,
  objetogasto_subparcial SMALLINT,
  objetogasto_sort VARCHAR(30),
  batch_id BIGINT
);

COMMENT ON TABLE s_dim_objetogasto_std_objetogasto_src IS 'La clave de negocio (bk) para esta tabla esta compuesta por objetogasto_inciso, objetogasto_principal, objetogasto_parcial y objetogasto_subparcial';

ALTER TABLE s_dim_objetogasto_std_objetogasto_src OWNER TO etl_user;
