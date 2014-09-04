-- Function: fn_populate_dim_fecha_std(integer, integer)

-- DROP FUNCTION fn_populate_dim_fecha_std(integer, integer);

CREATE OR REPLACE FUNCTION fn_populate_dim_fecha_std(fromyear integer, toyear integer)
  RETURNS void AS
$BODY$
DECLARE
  curyear INT;
  lastday BOOLEAN;
  cadena TEXT;
  curdate DATE;
BEGIN
  FOR curyear IN fromyear..toyear LOOP
    lastday := FALSE;
    curdate := (curyear::TEXT||'-01-01')::DATE;
    WHILE NOT lastday LOOP
      cadena := REPLACE(curdate::TEXT, '-', '');
      INSERT INTO dim_fecha_std_fecha(fecha, fecha_bk, dia_nombre, dia_nombrecorto, dia_dow, dia_dom, dia_doy, dia_sort, mes_numero, mes_aniomes, mes_nombre, mes_nombrecorto, anio_numero)
      VALUES(curdate, cadena, fn_getdayname_es(curdate)||' '||DATE_PART('DAY', curdate)::TEXT, fn_getshortdayname_es(curdate)||' '||DATE_PART('DAY', curdate)::TEXT, fn_getisodow(curdate), DATE_PART('DAY', curdate), DATE_PART('DOY', curdate), cadena, DATE_PART('MONTH', curdate), SUBSTRING(cadena, 1, 6)::INT, fn_getmonthname_es(curdate)||' '||curyear::TEXT, fn_getshortmonthname_es(curdate)||' '||curyear::TEXT, curyear);
      
      lastday := TRUE;
      curdate := curdate + 1;
      lastday := DATE_PART('YEAR', curdate) <> curyear;
    END LOOP;
  END LOOP;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION fn_populate_dim_fecha_std(integer, integer)
  OWNER TO etl_user;
