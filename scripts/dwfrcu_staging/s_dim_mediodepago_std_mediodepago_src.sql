CREATE TABLE s_dim_mediodepago_std_mediodepago_src
(
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

ALTER TABLE s_dim_mediodepago_std_mediodepago_src
  OWNER TO etl_user;