CREATE TABLE s_fact_fin_depositocheque_src(
  banco_std_banco_bk VARCHAR(10),
  ctabancaria_std_ctabancaria_bk VARCHAR(10),
  mediodepago_std_mediodepago_bk VARCHAR(10),
  ejercicio_std_ejercicio_bk VARCHAR(10),
  observacion TEXT,
  fecha_autorizacion DATE,
  fecha DATE,
  procesado VARCHAR(4),
  nro_deposito VARCHAR(15),
  id_deposito VARCHAR(15),
  m_monto_boleta NUMERIC(15, 6),
  rowid SERIAL NOT NULL
);

ALTER TABLE s_fact_fin_depositocheque_src OWNER TO etl_user;