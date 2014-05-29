CREATE TABLE dim_ctabancaria_std_ctabancaria(
  ctabancaria_sk SERIAL NOT NULL,
  ctabancaria_bk VARCHAR(10), 	
  ctabancaria_nro_cta VARCHAR(15),
  ctabancaria_nombre VARCHAR(40),
  ctabancaria_bancoid VARCHAR(10),
  ctabancaria_banco VARCHAR(10),
  ctabancaria_codsipefco VARCHAR(10),
  ctabancaria_subcodsipefco VARCHAR(10),
  ctabancaria_cuenta VARCHAR(20),
  ctabancaria_tipo_cuenta VARCHAR(4),
  ctabancaria_nominacion_cuenta VARCHAR(40),
  ctabancaria_moneda VARCHAR(10),
  ctabancaria_modelo_cheque TEXT,
  ctabancaria_sucursal VARCHAR(30),
  ctabancaria_sort VARCHAR(30),
  ctabancaria_check VARCHAR(32),
  batch_id BIGINT
);

ALTER TABLE dim_ctabancaria_std_ctabancaria OWNER TO etl_user;

ALTER TABLE dim_ctabancaria_std_ctabancaria ADD CONSTRAINT pk_dim_ctabancaria_std_ctabancaria PRIMARY KEY (ctabancaria_sk);
ALTER TABLE dim_ctabancaria_std_ctabancaria ADD CONSTRAINT uk_dim_ctabancaria_std_ctabancaria UNIQUE (ctabancaria_bk);

INSERT INTO dim_ctabancaria_std_ctabancaria(ctabancaria_sk, ctabancaria_bk, ctabancaria_nro_cta, ctabancaria_nombre,
ctabancaria_bancoid, ctabancaria_banco, ctabancaria_codsipefco, ctabancaria_subcodsipefco, ctabancaria_cuenta, ctabancaria_tipo_cuenta, ctabancaria_nominacion_cuenta,
ctabancaria_moneda, ctabancaria_modelo_cheque, ctabancaria_sucursal, ctabancaria_sort, ctabancaria_check, batch_id)
VALUES(-1, 'DESC', 'Desconocido', 'Desconocido', 'DESC', 'DESC', 'DESC', 'DESC', 'Desconocido', 'DESC', 'Desconocido', 'DESC', 'Desconocido', 'Desconocido','DESC', 'ZZZZZZZZZZZZZZZZZZZZ', 0);

INSERT INTO dim_ctabancaria_std_ctabancaria(ctabancaria_sk, ctabancaria_bk, ctabancaria_nro_cta, ctabancaria_nombre, ctabancaria_bancoid,
ctabancaria_banco, ctabancaria_codsipefco, ctabancaria_subcodsipefco, ctabancaria_cuenta, ctabancaria_tipo_cuenta, ctabancaria_nominacion_cuenta,
ctabancaria_moneda, ctabancaria_modelo_cheque, ctabancaria_sucursal, ctabancaria_sort, ctabancaria_check, batch_id)
VALUES(-2, 'NA', 'No Aplicable', 'No Aplicable', 'NA', 'NA', 'NA', 'NA', 'No Aplicable', 'NA', 'No Aplicable', 'NA', 'No Aplicable', 'No Aplicable', 'NA', 'ZZZZZZZZZZZZZZZZZZZZ', 0);
  