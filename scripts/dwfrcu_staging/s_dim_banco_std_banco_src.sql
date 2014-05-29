CREATE TABLE s_dim_banco_std_banco_src(
  banco_bk VARCHAR(10),
  banco_nombre VARCHAR(50),
  banco_direccion VARCHAR(50),
  banco_telefono VARCHAR(20),
  banco_fax VARCHAR(20),
  banco_contacto VARCHAR(50),
  banco_abreviatura VARCHAR(10), 
  banco_codanexoscierre VARCHAR(20),
  banco_codigosysper VARCHAR(20),
  banco_sort VARCHAR(30),
  batch_id BIGINT
);

ALTER TABLE s_dim_banco_std_banco_src OWNER TO etl_user;

