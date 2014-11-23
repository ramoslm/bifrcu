CREATE TABLE dim_codeconomico_std_codeconomico(
  codeconomico_sk SERIAL NOT NULL,
  codeconomico_bk VARCHAR(10),
  codeconomico_nombre VARCHAR(40),
  codeconomico_sort VARCHAR(30),
  codeconomico_check VARCHAR(32),
  batch_id BIGINT,
  CONSTRAINT pk_dim_codeconomico_std_codeconomico PRIMARY KEY(codeconomico_sk),
  CONSTRAINT uk_dim_codeconomico_std_codeconomico UNIQUE(codeconomico_bk)
);

COMMENT ON TABLE dim_codeconomico_std_codeconomico IS 'Clasificación del gasto.';

ALTER TABLE dim_codeconomico_std_codeconomico OWNER TO etl_user;

INSERT INTO dim_codeconomico_std_codeconomico(codeconomico_sk, codeconomico_bk, codeconomico_nombre, codeconomico_sort, codeconomico_check, batch_id)
VALUES(-1, 'DESC', 'Desconocido', 'DESC', 'ZZZZZZZZZZZZZZZZZZZZ', 0);

INSERT INTO dim_codeconomico_std_codeconomico(codeconomico_sk, codeconomico_bk, codeconomico_nombre, codeconomico_sort, codeconomico_check, batch_id)
VALUES(-2, 'NA', 'No Aplicable', 'NA', 'ZZZZZZZZZZZZZZZZZZZZ', 0);