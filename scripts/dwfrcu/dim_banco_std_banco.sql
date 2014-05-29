CREATE TABLE dim_banco_std_banco(
  banco_sk SERIAL NOT NULL,
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
  banco_check VARCHAR(32),
  batch_id BIGINT,
  CONSTRAINT pk_dim_banco_std_banco PRIMARY KEY(banco_sk),
  CONSTRAINT uk_dim_banco_std_banco UNIQUE(banco_bk)
);

ALTER TABLE dim_banco_std_banco OWNER TO etl_user;


INSERT INTO dim_banco_std_banco(banco_sk, banco_bk, banco_nombre, banco_direccion, banco_telefono, banco_fax, banco_contacto, banco_abreviatura, banco_codanexoscierre, banco_codigosysper, banco_sort, batch_id)
VALUES(-1, 'DESC', 'Desconocido', 'Desconocido', 'Desconocido', 'Desconocido', 'Desconocido', 'DESC', 'DESC', 'DESC', 'ZZZZZZZZZZZZZZZZZZZZ', 0);

INSERT INTO dim_banco_std_banco(banco_sk, banco_bk, banco_nombre, banco_direccion, banco_telefono, banco_fax, banco_contacto, banco_abreviatura, banco_codanexoscierre, banco_codigosysper, banco_sort, batch_id)
VALUES(-2, 'NA', 'No Aplicable', 'No Aplicable', 'No Aplicable', 'No Aplicable', 'No Aplicable', 'NA', 'NA', 'NA', 'ZZZZZZZZZZZZZZZZZZZZ', 0);

