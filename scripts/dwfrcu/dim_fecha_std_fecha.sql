CREATE TABLE dim_fecha_std_fecha
(
  fecha_sk serial NOT NULL,
  fecha date NOT NULL, -- Es la fecha en formato ISO.
  fecha_bk character varying(25) NOT NULL, -- Es la fecha en formato clave de negocio.
  dia_nombre character varying(50) NOT NULL, -- Es el nombre del día de la semana y el número de día en el mes. Por ejemplo Lunes 2, Martes 3.
  dia_nombrecorto character varying(25) NOT NULL, -- Es el nombre corto del día de la semana y el número de día en el mes. Por ejemplo Lun 2, Mar 3.
  dia_dow smallint NOT NULL, -- Indica el número ISO de día de la semana. Lunes es 1 y Domingo es 7.
  dia_dom smallint NOT NULL, -- Indica el número de día del mes.
  dia_doy smallint NOT NULL, -- Indica el número de día del año. De 1 a 365 o 366.
  dia_sort character varying(25),
  mes_numero smallint NOT NULL, -- Indica el número de mes en el año. De 1 a 12.
  mes_aniomes integer NOT NULL, -- Indica el número de anio y mes.
  mes_nombre character varying(20) NOT NULL, -- Indica el nombre del mes.
  mes_nombrecorto character varying(15) NOT NULL, -- Indica el nombre abreviado del mes.
  anio_numero smallint NOT NULL, -- Indica el numero de año.
  CONSTRAINT pk_dim_fecha_std_fecha PRIMARY KEY (fecha_sk),
  CONSTRAINT uk_dim_fecha_std_fecha_bk UNIQUE (fecha_bk)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE dim_fecha_std_fecha
  OWNER TO etl_user;
GRANT ALL ON TABLE dim_fecha_std_fecha TO etl_user;
COMMENT ON COLUMN dim_fecha_std_fecha.fecha IS 'Es la fecha en formato ISO.';
COMMENT ON COLUMN dim_fecha_std_fecha.fecha_bk IS 'Es la fecha en formato clave de negocio.';
COMMENT ON COLUMN dim_fecha_std_fecha.dia_nombre IS 'Es el nombre del día de la semana y el número de día en el mes. Por ejemplo Lunes 2, Martes 3.';
COMMENT ON COLUMN dim_fecha_std_fecha.dia_nombrecorto IS 'Es el nombre corto del día de la semana y el número de día en el mes. Por ejemplo Lun 2, Mar 3.';
COMMENT ON COLUMN dim_fecha_std_fecha.dia_dow IS 'Indica el número ISO de día de la semana. Lunes es 1 y Domingo es 7.';
COMMENT ON COLUMN dim_fecha_std_fecha.dia_dom IS 'Indica el número de día del mes.';
COMMENT ON COLUMN dim_fecha_std_fecha.dia_doy IS 'Indica el número de día del año. De 1 a 365 o 366.';
COMMENT ON COLUMN dim_fecha_std_fecha.mes_numero IS 'Indica el número de mes en el año. De 1 a 12.';
COMMENT ON COLUMN dim_fecha_std_fecha.mes_aniomes IS 'Indica el número de anio y mes.';
COMMENT ON COLUMN dim_fecha_std_fecha.mes_nombre IS 'Indica el nombre del mes.';
COMMENT ON COLUMN dim_fecha_std_fecha.mes_nombrecorto IS 'Indica el nombre abreviado del mes.';
COMMENT ON COLUMN dim_fecha_std_fecha.anio_numero IS 'Indica el numero de año.';

INSERT INTO dim_fecha_std_fecha(fecha_sk, fecha, fecha_bk, dia_nombre, dia_nombrecorto, dia_dow, dia_dom, dia_doy, dia_sort, mes_numero, mes_aniomes,
mes_nombre, mes_nombrecorto, anio_numero)
VALUES (-1, '0001-01-01', 'DESC', 'Desconocido', 'DESC', -1, -1, -1, 'DESC', -1, -1, 'Desconocido', 'DESC', -1);

INSERT INTO dim_fecha_std_fecha(fecha_sk, fecha, fecha_bk, dia_nombre, dia_nombrecorto, dia_dow, dia_dom, dia_doy, dia_sort, mes_numero, mes_aniomes,
mes_nombre, mes_nombrecorto, anio_numero)
VALUES (-2, '0002-02-02', 'NA', 'No Aplicable', 'NA', -2, -2, -2, 'NA', -2, -2, 'No Aplicable', 'NA', -2);