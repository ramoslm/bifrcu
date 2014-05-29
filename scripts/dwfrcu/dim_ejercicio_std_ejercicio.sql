CREATE TABLE dim_ejercicio_std_ejercicio(
  ejercicio_sk SERIAL NOT NULL,
  ejercicio_bk VARCHAR(10),
  ejercicio_nombre VARCHAR(30),
  ejercicio_cierreanual VARCHAR(1),
  ejercicio_fechadesde DATE,
  ejercicio_fechahasta DATE,
  ejercicio_activo VARCHAR(1),
  ejercicio_abierto VARCHAR(1), 
  ejercicio_fechacongelamiento DATE,
  ejercicio_ultdiahabil DATE,
  ejercicio_sort VARCHAR(30),
  ejercicio_check VARCHAR(32),
  batch_id BIGINT,
  CONSTRAINT pk_dim_ejercicio_std_ejercicio PRIMARY KEY(ejercicio_sk),
  CONSTRAINT uk_dim_ejercicio_std_ejercicio UNIQUE(ejercicio_bk)
);

ALTER TABLE dim_ejercicio_std_ejercicio OWNER TO etl_user;

-- PREGUNTAR QUE PONER EN DESCONOCIDO Y EN NO APLICA PARA LA FECHA
INSERT INTO dim_ejercicio_std_ejercicio(ejercicio_sk, ejercicio_bk, ejercicio_nombre, ejercicio_cierreanual, ejercicio_fechadesde, ejercicio_fechahasta, ejercicio_activo, ejercicio_abierto, ejercicio_fechacongelamiento, ejercicio_ultdiahabil, ejercicio_sort, batch_id)
VALUES(-1, 'DESC', 'Desconocido', 'D', '', '', 'D', 'D', '', '', 'ZZZZZZZZZZZZZZZZZZZZ', 0);

INSERT INTO dim_ejercicio_std_ejercicio(ejercicio_sk, ejercicio_bk, ejercicio_nombre, ejercicio_cierreanual, ejercicio_fechadesde, ejercicio_fechahasta, ejercicio_activo, ejercicio_abierto, ejercicio_fechacongelamiento, ejercicio_ultdiahabil, ejercicio_sort, batch_id)
VALUES(-2, 'NA', 'No Aplicable', 'D', '', '', 'D', 'D', '', '', 'ZZZZZZZZZZZZZZZZZZZZ', 0);

