-- DROP TABLE s_fact_fin_gasto_map;

CREATE TABLE s_fact_fin_gasto_map(
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
  daycode INT
);

ALTER TABLE s_fact_fin_gasto_map OWNER TO etl_user;