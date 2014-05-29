CREATE TABLE s_dim_ctabancaria_std_ctabancaria_src(
  ctabancaria_bk VARCHAR(10), 	
  ctabancaria_nro_cta VARCHAR(15),
  ctabancaria_nombre VARCHAR(40),
  ctabancaria_bancoid VARCHAR(10),
  ctabancaria_banco VARCHAR(10),
  ctabancaria_codsipefco VARCHAR(10),
  ctabancaria_subcodsipefco VARCHAR(10),
  ctabancaria_cuenta VARCHAR(20),
  ctabancaria_tipo_cuenta VARCHAR(5),
  ctabancaria_nominacion_cuenta VARCHAR(40),
  ctabancaria_moneda VARCHAR(10),
  ctabancaria_modelo_cheque TEXT,
  ctabancaria_sucursal VARCHAR(30),
  ctabancaria_sort VARCHAR(30),
  batch_id BIGINT
);

ALTER TABLE s_dim_ctabancaria_std_ctabancaria_src OWNER TO etl_user;