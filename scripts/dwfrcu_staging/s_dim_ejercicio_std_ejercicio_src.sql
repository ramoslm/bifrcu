CREATE TABLE s_dim_ejercicio_std_ejercicio_src(
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
  batch_id BIGINT
);

ALTER TABLE s_dim_ejercicio_std_ejercicio_src OWNER TO etl_user;

