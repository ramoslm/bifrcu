DROP TABLE dim_redprogramatica_std_redprogramatica;

CREATE TABLE dim_redprogramatica_std_redprogramatica(
  redprogramatica_sk SERIAL NOT NULL,
  redprogramatica_programa SMALLINT,
  redprogramatica_nombreprograma VARCHAR(60),
  redprogramatica_nombre VARCHAR(40),
  redprogramatica_subprograma SMALLINT,
  redprogramatica_proyecto SMALLINT,
  redprogramatica_actividad SMALLINT,
  redprogramatica_obra SMALLINT,
  redprogramatica_sort VARCHAR(30),
  redprogramatica_check VARCHAR(32),
  batch_id BIGINT,
  CONSTRAINT pk_dim_redprogramatica_std_redprogramatica PRIMARY KEY(redprogramatica_sk),
  CONSTRAINT uk_dim_redprogramatica_std_redprogramatica UNIQUE(redprogramatica_programa, redprogramatica_subprograma, redprogramatica_proyecto, redprogramatica_actividad, redprogramatica_obra)
);

COMMENT ON TABLE dim_redprogramatica_std_redprogramatica IS 'Distintos programas, subprogramas, proyectos, actividades y obras.';
COMMENT ON TABLE dim_redprogramatica_std_redprogramatica IS 'La clave de negocio (bk) para esta tabla esta compuesta por redprogramatica_programa, redprogramatica_subprograma, redprogramatica_proyecto, redprogramatica_actividad y redprogramatica_obra';

ALTER TABLE dim_redprogramatica_std_redprogramatica OWNER TO etl_user;

INSERT INTO dim_redprogramatica_std_redprogramatica(redprogramatica_sk, redprogramatica_programa, redprogramatica_subprograma, redprogramatica_proyecto,
redprogramatica_actividad, redprogramatica_obra, redprogramatica_nombreprograma, redprogramatica_nombre, redprogramatica_sort, redprogramatica_check, batch_id)
VALUES(-1, -1, -1, -1, -1, -1, 'Desconocido', 'Desconocido', 'DESC', 'ZZZZZZZZZZZZZZZZZZZZ', 0);

INSERT INTO dim_redprogramatica_std_redprogramatica(redprogramatica_sk, redprogramatica_programa, redprogramatica_subprograma, redprogramatica_proyecto,
redprogramatica_actividad, redprogramatica_obra, redprogramatica_nombreprograma, redprogramatica_nombre, redprogramatica_sort, redprogramatica_check, batch_id)
VALUES(-2, -2, -2, -2, -2, -2, 'No Aplicable', 'No Aplicable', 'NA', 'ZZZZZZZZZZZZZZZZZZZZ', 0);
