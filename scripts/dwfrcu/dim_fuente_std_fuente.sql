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

ALTER TABLE dim_fuente_std_fuente OWNER TO etl_user;