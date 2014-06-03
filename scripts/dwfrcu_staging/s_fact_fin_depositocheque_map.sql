CREATE TABLE s_fact_fin_depositocheque_map(
  banco_std_banco_sk INTEGER,
  ctabancaria_std_ctabancaria_sk INTEGER,
  mediodepago_std_mediodepago_sk INTEGER,
  ejercicio_std_ejercicio_sk INTEGER,
  fecha_autorizacion_std_fecha_sk INTEGER,
  fecha_std_fecha_sk INTEGER,
  observacion TEXT,
  procesado VARCHAR(4),
  nro_deposito VARCHAR(15),
  id_deposito VARCHAR(15),
  m_monto_boleta NUMERIC(15, 6),
  rowid INTEGER,
  batch_id BIGINT,
  daycode INTEGER
);

ALTER TABLE s_fact_fin_depositocheque_map OWNER TO etl_user;