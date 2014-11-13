-- DROP TABLE fact_fin_gasto;

CREATE TABLE fact_fin_gasto(
  rowid INT NOT NULL,
  fuente_std_fuente_sk INT,
  funcion_std_funcion_sk INT,
  codeconomico_std_codeconomico_sk INT,
  fecha_std_fecha_sk INT,
  unidadpresupuestaria_std_unidadpresupuestaria_sk INT,
  redprogramatica_std_redprogramatica_sk INT,
  objetogasto_std_objetogasto_sk INT,
  m_cred_vigente NUMERIC(40, 2),
  m_cred_original NUMERIC(40, 2),
  m_preventivo NUMERIC(14, 2),
  m_comprimiso NUMERIC(14, 2),
  m_devengado NUMERIC(16, 2),
  m_pagado NUMERIC(16, 2),
  m_saldo_presupuestario NUMERIC(40, 2),
  m_preventivo_no_comprometido NUMERIC(40, 2),
  m_compromiso_no_devengado NUMERIC(40, 2),
  m_devengado_no_pagado NUMERIC(40, 2),
  batch_id BIGINT NOT NULL DEFAULT 0,
  daycode INT,
  CONSTRAINT pk_fact_fin_gasto PRIMARY KEY(rowid),
  CONSTRAINT fk_fact_fin_gasto_fuente_std_fuente FOREIGN KEY(fuente_std_fuente_sk) REFERENCES dim_fuente_std_fuente,
  CONSTRAINT fk_fact_fin_gasto_funcion_std_funcion FOREIGN KEY(funcion_std_funcion_sk) REFERENCES dim_funcion_std_funcion,
  CONSTRAINT fk_fact_fin_gasto_codeconomico_std_codeconomico FOREIGN KEY(codeconomico_std_codeconomico_sk) REFERENCES dim_codeconomico_std_codeconomico,
  CONSTRAINT fk_fact_fin_gasto_unidadpresupuestaria_std_unidadpresupuestaria FOREIGN KEY(unidadpresupuestaria_std_unidadpresupuestaria_sk) REFERENCES dim_unidadpresupuestaria_std_unidadpresupuestaria,
  CONSTRAINT fk_fact_fin_gasto_fecha_std_fecha FOREIGN KEY(fecha_std_fecha_sk) REFERENCES dim_fecha_std_fecha,
  CONSTRAINT fk_fact_fin_gasto_redprogramatica_std_redprogramatica FOREIGN KEY(redprogramatica_std_redprogramatica_sk) REFERENCES dim_redprogramatica_std_redprogramatica,
  CONSTRAINT fk_fact_fin_gasto_objetogasto_std_objetogasto FOREIGN KEY(objetogasto_std_objetogasto_sk) REFERENCES dim_objetogasto_std_objetogasto
);

ALTER TABLE fact_fin_gasto OWNER TO etl_user;