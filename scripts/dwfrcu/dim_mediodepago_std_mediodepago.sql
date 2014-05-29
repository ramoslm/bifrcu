CREATE TABLE dim_mediodepago_std_mediodepago
(
  mediodepago_sk SERIAL NOT NULL,
  mediodepago_bk VARCHAR(10),
  mediodepago_nombre VARCHAR(30),
  mediodepago_numerado VARCHAR(5),
  mediodepago_escheque VARCHAR(4),
  mediodepago_ultnumero VARCHAR(12),
  mediodepago_nrocuenta VARCHAR(20),
  mediodepago_propio VARCHAR(4),
  mediodepago_numeracionautomatica VARCHAR(4),
  mediodepago_vueltomediopago VARCHAR(10),
  mediodepago_bancoid VARCHAR(10),
  mediodepago_banco VARCHAR(10),
  mediodepago_tipoitemparte VARCHAR(10),
  mediodepago_sort character varying(30),
  mediodepago_check character varying(32),
  batch_id BIGINT
);

ALTER TABLE dim_mediodepago_std_mediodepago OWNER TO etl_user;

ALTER TABLE dim_mediodepago_std_mediodepago ADD CONSTRAINT pk_dim_mediodepago_std_mediodepago PRIMARY KEY (mediodepago_sk);
ALTER TABLE dim_mediodepago_std_mediodepago ADD CONSTRAINT uk_dim_mediodepago_std_mediodepago UNIQUE (mediodepago_bk);

INSERT INTO dim_mediodepago_std_mediodepago(mediodepago_sk, mediodepago_bk, mediodepago_nombre, mediodepago_numerado, mediodepago_escheque,
mediodepago_ultnumero, mediodepago_nrocuenta, mediodepago_propio, mediodepago_numeracionautomatica, mediodepago_vueltomediopago, mediodepago_bancoid,
mediodepago_banco, mediodepago_tipoitemparte, mediodepago_sort, mediodepago_check, batch_id)
VALUES(-1, 'DESC', 'Desconocido', 'DESC', 'DESC', 'Desconocido', 'Desconocido', 'DESC', 'DESC', 'DESC', 'DESC', 'DESC', 'DESC', 'Desconocido', 'ZZZZZZZZZZZZZZZZZZZZ', 0);

INSERT INTO dim_mediodepago_std_mediodepago(mediodepago_sk, mediodepago_bk, mediodepago_nombre, mediodepago_numerado, mediodepago_escheque,
mediodepago_ultnumero, mediodepago_nrocuenta, mediodepago_propio, mediodepago_numeracionautomatica, mediodepago_vueltomediopago, mediodepago_bancoid,
mediodepago_banco, mediodepago_tipoitemparte, mediodepago_sort, mediodepago_check, batch_id)
VALUES(-2, 'NA', 'No Aplicable', 'NA', 'NA', 'No Aplicable', 'No Aplicable', 'NA', 'NA', 'NA', 'NA', 'NA', 'NA', 'No Aplicable', 'ZZZZZZZZZZZZZZZZZZZZ', 0);
