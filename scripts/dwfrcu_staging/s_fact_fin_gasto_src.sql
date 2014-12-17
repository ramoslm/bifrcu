-- DROP TABLE s_fact_fin_gasto_src;

CREATE TABLE s_fact_fin_gasto_src(
  rowid SERIAL NOT NULL,
  fuente_std_fuente_bk VARCHAR(10),
  funcion_std_funcion_bk VARCHAR(10),
  codeconomico_std_codeconomico_bk VARCHAR(10),
  fecha_std_fecha_bk VARCHAR(25),
  m_cred_vigente NUMERIC(40, 2),
  m_cred_original NUMERIC(40, 2),
  m_preventivo NUMERIC(14, 2),
  m_compromiso NUMERIC(14, 2),
  m_devengado NUMERIC(16, 2),
  m_pagado NUMERIC(16, 2),
  m_saldo_presupuestario NUMERIC(40, 2),
  m_preventivo_no_comprometido NUMERIC(40, 2),
  m_compromiso_no_devengado NUMERIC(40, 2),
  m_devengado_no_pagado NUMERIC(40, 2),
  programa SMALLINT,
  subprograma SMALLINT,
  proyecto SMALLINT,
  actividad SMALLINT,
  obra SMALLINT,
  inciso SMALLINT,
  principal SMALLINT,
  parcial SMALLINT,
  subparcial SMALLINT,
  unidad_presupuestaria SMALLINT,
  subunidad_presupuestaria INTEGER
);

ALTER TABLE s_fact_fin_gasto_src OWNER TO etl_user;