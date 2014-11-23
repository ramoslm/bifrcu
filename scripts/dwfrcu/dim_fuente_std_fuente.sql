CREATE TABLE dim_fuente_std_fuente(
  fuente_sk SERIAL NOT NULL,
  fuente_bk VARCHAR(10),
  fuente_nombre VARCHAR(40),
  fuente_sort VARCHAR(30),
  fuente_check VARCHAR(32),
  batch_id BIGINT,
  CONSTRAINT pk_dim_fuente_std_fuente PRIMARY KEY(fuente_sk),
  CONSTRAINT uk_dim_fuente_std_fuente UNIQUE(fuente_bk)
);

COMMENT ON TABLE dim_fuente_std_fuente IS 'Fuentes cargadas en la partida que tiene la Universidad para financiar su presupuesto, son fijas y provienen del Manual de clasificaciones presupuestarias para el sector público Nacional.';

ALTER TABLE dim_fuente_std_fuente OWNER TO etl_user;

INSERT INTO dim_fuente_std_fuente(fuente_sk, fuente_bk, fuente_nombre, fuente_sort, fuente_check, batch_id)
VALUES(-1, 'DESC', 'Desconocido', 'DESC', 'ZZZZZZZZZZZZZZZZZZZZ', 0);

INSERT INTO dim_fuente_std_fuente(fuente_sk, fuente_bk, fuente_nombre, fuente_sort, fuente_check, batch_id)
VALUES(-2, 'NA', 'No Aplicable', 'NA', 'ZZZZZZZZZZZZZZZZZZZZ', 0);