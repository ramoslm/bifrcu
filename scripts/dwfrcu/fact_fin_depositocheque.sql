CREATE TABLE fact_fin_depositocheque(
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
  rowid INTEGER NOT NULL,
  batch_id BIGINT NOT NULL DEFAULT 0,
  daycode INTEGER,
  CONSTRAINT pk_fact_fin_depositocheque PRIMARY KEY (rowid),
  CONSTRAINT fk_fact_fin_depositocheque_banco_std_banco FOREIGN KEY (banco_std_banco_sk) REFERENCES dim_banco_std_banco,
  CONSTRAINT fk_fact_fin_depositocheque_ctabancaria_std_ctabancaria FOREIGN KEY (ctabancaria_std_ctabancaria_sk) REFERENCES dim_ctabancaria_std_ctabancaria,
  CONSTRAINT fk_fact_fin_depositocheque_mediodepago_std_mediodepago FOREIGN KEY (mediodepago_std_mediodepago_sk) REFERENCES dim_mediodepago_std_mediodepago,
  CONSTRAINT fk_fact_fin_depositocheque_ejercicio_std_ejercicio FOREIGN KEY (ejercicio_std_ejercicio_sk) REFERENCES dim_ejercicio_std_ejercicio,
  CONSTRAINT fk_fact_fin_depositocheque_fecha_autorizacion_std_fecha FOREIGN KEY (fecha_autorizacion_std_fecha_sk) REFERENCES dim_fecha_std_fecha,
  CONSTRAINT fk_fact_fin_depositocheque_fecha_std_fecha FOREIGN KEY (fecha_std_fecha_sk) REFERENCES dim_fecha_std_fecha
);

ALTER TABLE fact_fin_depositocheque OWNER TO etl_user;

CREATE INDEX ix_fact_fin_depositocheque_daycode ON fact_fin_depositocheque USING BTREE (daycode);