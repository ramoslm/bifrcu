
CREATE TYPE t_batch_id AS
   (batch_id bigint,
    etlname character varying(100));
ALTER TYPE t_batch_id OWNER TO postgres;


CREATE TABLE log_batch(
  batch_id bigserial NOT NULL,
  datetime timestamp without time zone NOT NULL DEFAULT (now())::timestamp without time zone,
  etlname character varying(100),
  CONSTRAINT pk_log_batch PRIMARY KEY (batch_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE log_batch OWNER TO etl_user;
COMMENT ON TABLE log_batch IS 'Tabla que registra los errores de mapeo de dimensiones en la tabla de hechos.';


CREATE TABLE log_loaderror(
  error_id bigserial NOT NULL,
  factname character varying(50) NOT NULL,
  dimlevelname character varying(50) NOT NULL,
  memberkey character varying(25),
  rowid bigint,
  batch_id bigint NOT NULL DEFAULT 0,
  CONSTRAINT pk_log_loaderror PRIMARY KEY (error_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE log_loaderror OWNER TO etl_user;


CREATE INDEX ix_log_loaderror_batch_id ON log_loaderror USING btree(batch_id);
CREATE INDEX ix_log_loaderror_factname_dimlevelname ON log_loaderror USING btree(factname, dimlevelname);

CREATE TABLE log_dimmaperror
(
  error_id bigserial NOT NULL,
  dimname character varying(50) NOT NULL, -- Nombre de la dimension origen.
  memberkey character varying(25), -- Clave del miembro de la dimension origen.
  parentname character varying(25) NOT NULL, -- Nombre del campo que hace referencia a la dimension padre.
  parentkey character varying(25), -- Clave del padre que se intentaba mapear.
  batch_id bigint NOT NULL DEFAULT 0,
  CONSTRAINT pk_log_dimmaperror PRIMARY KEY (error_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE log_dimmaperror OWNER TO quimdw;
COMMENT ON TABLE log_dimmaperror IS 'Tabla que registra los errores de mapeo de dimensiones.';
COMMENT ON COLUMN log_dimmaperror.dimname IS 'Nombre de la dimension origen.';
COMMENT ON COLUMN log_dimmaperror.memberkey IS 'Clave del miembro de la dimension origen.';
COMMENT ON COLUMN log_dimmaperror.parentname IS 'Nombre del campo que hace referencia a la dimension padre.';
COMMENT ON COLUMN log_dimmaperror.parentkey IS 'Clave del padre que se intentaba mapear.';


-- Index: ix_log_dimmaperror_batch_id

-- DROP INDEX ix_log_dimmaperror_batch_id;

CREATE INDEX ix_log_dimmaperror_batch_id
  ON log_dimmaperror
  USING btree
  (batch_id);

-- Index: ix_log_dimmaperror_dimname_parentname

-- DROP INDEX ix_log_dimmaperror_dimname_parentname;

CREATE INDEX ix_log_dimmaperror_dimname_parentname
  ON log_dimmaperror
  USING btree
  (dimname, parentname);

CREATE OR REPLACE FUNCTION fn_concatnull(cadena1 integer, cadena2 integer)
  RETURNS character varying AS
$BODY$
BEGIN
  RETURN fn_concatnull(cadena1::TEXT, cadena2::TEXT);
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION fn_concatnull(integer, integer) OWNER TO postgres;
GRANT EXECUTE ON FUNCTION fn_concatnull(integer, integer) TO postgres;
GRANT EXECUTE ON FUNCTION fn_concatnull(integer, integer) TO public;
COMMENT ON FUNCTION fn_concatnull(integer, integer) IS '
Concatena 2 cadenas:
  Si las 2 estan vacias devuelve vacio
  Si la 1ra esta vacia devuelve la 2da
  Si la 2da esta vacia devuelve la 1ra';




CREATE OR REPLACE FUNCTION fn_concatnull(cadena1 integer, cadena2 character varying)
  RETURNS character varying AS
$BODY$
BEGIN
  RETURN fn_concatnull(cadena1::TEXT, cadena2);
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION fn_concatnull(integer, character varying) OWNER TO postgres;
GRANT EXECUTE ON FUNCTION fn_concatnull(integer, character varying) TO postgres;
GRANT EXECUTE ON FUNCTION fn_concatnull(integer, character varying) TO public;
COMMENT ON FUNCTION fn_concatnull(integer, character varying) IS '
Concatena 2 cadenas:
  Si las 2 estan vacias devuelve vacio
  Si la 1ra esta vacia devuelve la 2da
  Si la 2da esta vacia devuelve la 1ra';



CREATE OR REPLACE FUNCTION fn_concatnull(cadena1 character varying, cadena2 integer)
  RETURNS character varying AS
$BODY$
BEGIN
  RETURN fn_concatnull(cadena1, cadena2::TEXT);
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION fn_concatnull(character varying, integer) OWNER TO postgres;
GRANT EXECUTE ON FUNCTION fn_concatnull(character varying, integer) TO postgres;
GRANT EXECUTE ON FUNCTION fn_concatnull(character varying, integer) TO public;
COMMENT ON FUNCTION fn_concatnull(character varying, integer) IS '
Concatena 2 cadenas:
  Si las 2 estan vacias devuelve vacio
  Si la 1ra esta vacia devuelve la 2da
  Si la 2da esta vacia devuelve la 1ra';



CREATE OR REPLACE FUNCTION fn_concatnull(cadena1 character varying, cadena2 character varying)
  RETURNS character varying AS
$BODY$
DECLARE
  resultado VARCHAR;
BEGIN
  IF cadena1 IS NULL AND cadena2 IS NULL
  THEN resultado := NULL;
  ELSE
    IF cadena1 IS NULL
    THEN resultado := cadena2;
    ELSE
      IF cadena2 IS NULL
      THEN resultado := cadena1;
      ELSE resultado := cadena1||cadena2;
      END IF;
    END IF;
  END IF;

  RETURN resultado;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION fn_concatnull(character varying, character varying) OWNER TO postgres;
GRANT EXECUTE ON FUNCTION fn_concatnull(character varying, character varying) TO postgres;
GRANT EXECUTE ON FUNCTION fn_concatnull(character varying, character varying) TO public;
COMMENT ON FUNCTION fn_concatnull(character varying, character varying) IS '
Concatena 2 cadenas:
  Si las 2 estan vacias devuelve vacio
  Si la 1ra esta vacia devuelve la 2da
  Si la 2da esta vacia devuelve la 1ra';



CREATE OR REPLACE FUNCTION fn_set_log_loaderror(character varying, character varying, character varying, bigint, bigint)
  RETURNS void AS
$BODY$
DECLARE
  p_factname ALIAS FOR $1;
  p_dimlevelname ALIAS FOR $2;
  p_memberkey ALIAS FOR $3;
  p_batch_id ALIAS FOR $4;
  p_rowid ALIAS FOR $5;
BEGIN
  INSERT INTO log_loaderror(factname, dimlevelname, memberkey, batch_id, rowid)
                     VALUES(p_factname, p_dimlevelname, p_memberkey, p_batch_id, p_rowid);
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION fn_set_log_loaderror(character varying, character varying, character varying, bigint, bigint) OWNER TO etl_user;



CREATE OR REPLACE FUNCTION fn_setbatchid(descripcion text)
  RETURNS t_batch_id AS
$BODY$
DECLARE
  seq BIGINT;
  resultado t_batch_id;
BEGIN
  seq := nextval('log_batch_batch_id_seq'::regclass);
  SELECT seq::BIGINT, descripcion::VARCHAR(100) INTO resultado;

  INSERT INTO log_batch(batch_id, etlname) VALUES(seq, descripcion);
  
  RETURN resultado;
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION fn_setbatchid(text) OWNER TO etl_user;

CREATE OPERATOR >||<(
  PROCEDURE = "fn_concatnull",
  LEFTARG = varchar,
  RIGHTARG = varchar);


CREATE OPERATOR >||<(
  PROCEDURE = "fn_concatnull",
  LEFTARG = varchar,
  RIGHTARG = int4);


CREATE OPERATOR >||<(
  PROCEDURE = "fn_concatnull",
  LEFTARG = int4,
  RIGHTARG = varchar);


CREATE OPERATOR >||<(
  PROCEDURE = "fn_concatnull",
  LEFTARG = int4,
  RIGHTARG = int4);

