CREATE TABLE dim_objetogasto_std_objetogasto(
  objetogasto_sk SERIAL NOT NULL,
  objetogasto_inciso SMALLINT,
  objetogasto_nombre VARCHAR(40),
  objetogasto_principal SMALLINT,
  objetogasto_parcial SMALLINT,
  objetogasto_subparcial SMALLINT,
  objetogasto_sort VARCHAR(30),
  objetogasto_check VARCHAR(32),
  batch_id BIGINT,
  CONSTRAINT pk_dim_objetogasto_std_objetogasto PRIMARY KEY(objetogasto_sk),
  CONSTRAINT uk_dim_objetogasto_std_objetogasto UNIQUE(objetogasto_inciso, objetogasto_principal, objetogasto_parcial, objetogasto_subparcial)
);

COMMENT ON TABLE dim_objetogasto_std_objetogasto IS 'La clave de negocio (bk) para esta tabla esta compuesta por objetogasto_inciso, objetogasto_principal, objetogasto_parcial y objetogasto_subparcial';

ALTER TABLE dim_objetogasto_std_objetogasto OWNER TO etl_user;

INSERT INTO dim_objetogasto_std_objetogasto(objetogasto_sk, objetogasto_inciso, objetogasto_principal, objetogasto_parcial, objetogasto_subparcial,
objetogasto_nombre, objetogasto_sort, objetogasto_check, batch_id)
VALUES(-1, -1, -1, -1, -1, 'Desconocido', 'DESC', 'ZZZZZZZZZZZZZZZZZZZZ', 0);

INSERT INTO dim_objetogasto_std_objetogasto(objetogasto_sk, objetogasto_inciso, objetogasto_principal, objetogasto_parcial, objetogasto_subparcial,
objetogasto_nombre, objetogasto_sort, objetogasto_check, batch_id)
VALUES(-2, -2, -2, -2, -2, 'No Aplicable', 'NA', 'ZZZZZZZZZZZZZZZZZZZZ', 0);
