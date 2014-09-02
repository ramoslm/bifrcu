DROP TABLE s_dim_redprogramatica_std_redprogramatica_src;

CREATE TABLE s_dim_redprogramatica_std_redprogramatica_src(
  redprogramatica_programa SMALLINT,
  redprogramatica_nombreprograma VARCHAR(60),
  redprogramatica_nombre VARCHAR(40),
  redprogramatica_subprograma SMALLINT,
  redprogramatica_proyecto SMALLINT,
  redprogramatica_actividad SMALLINT,
  redprogramatica_obra SMALLINT,
  redprogramatica_sort character varying(30),
  batch_id bigint
);

COMMENT ON TABLE s_dim_redprogramatica_std_redprogramatica_src IS 'La clave de negocio (bk) para esta tabla esta compuesta por redprogramatica_programa, redprogramatica_subprograma, redprogramatica_proyecto, redprogramatica_actividad y redprogramatica_obra';

ALTER TABLE s_dim_redprogramatica_std_redprogramatica_src OWNER TO etl_user;