CREATE TABLE s_fact_fin_gasto_map(
  rowid INT NOT NULL,
  fuente_std_fuente_sk INT,
  funcion_std_funcion_sk INT,
  codeconomico_std_codeconomico_sk INT,
  fecha_std_fecha_sk INT,
  unidadpresupuestaria_std_unidadpresupuestaria_sk INT,
  redprogramatica_std_redprogramatica_sk INT,
  objetogasto_std_objetogasto_sk INT,
  m_ingreso NUMERIC(16, 2),
  m_preventivo NUMERIC(14, 2),
  m_comprimiso NUMERIC(14, 2),
  m_devengado NUMERIC(16, 2),
  m_pagado NUMERIC(16, 2),
  nro_recibo INTEGER,
  ejercicio INTEGER,
  anio_reglamentacion SMALLINT,
  tipo_reglamentacion SMALLINT,
  numero_reglamentacion SMALLINT,
  idpresupuesto BIGINT,
  batch_id BIGINT NOT NULL DEFAULT 0,
  daycode INT
);

ALTER TABLE s_fact_fin_gasto_map OWNER TO etl_user;