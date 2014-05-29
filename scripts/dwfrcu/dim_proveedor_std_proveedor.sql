CREATE TABLE dim_proveedor_std_proveedor(
  proveedor_sk SERIAL NOT NULL,
  proveedor_bk VARCHAR(10),
  proveedor_nombre VARCHAR(50),
  proveedor_cuit VARCHAR(13),
  proveedor_direccion VARCHAR(80),
  proveedor_telefono VARCHAR(20),
  proveedor_codant VARCHAR(2),
  proveedor_beneficiario VARCHAR(50),
  proveedor_catganancias VARCHAR(10),
  proveedor_fax VARCHAR(20),
  proveedor_codpost VARCHAR(15),
  proveedor_subcodpost VARCHAR(15),
  proveedor_impganancias VARCHAR(2),
  proveedor_impiva VARCHAR(2),
  proveedor_monotributo VARCHAR(2),
  proveedor_integrantesoc VARCHAR(1),
  proveedor_empleador VARCHAR(1),
  proveedor_fechaact VARCHAR(20),
  proveedor_email VARCHAR(40),
  proveedor_contacto VARCHAR(40),
  proveedor_codigodos VARCHAR(10), 
  proveedor_obrapublica VARCHAR(1),
  proveedor_retenciondep VARCHAR(10),
  proveedor_origenproveedor VARCHAR(1),
  proveedor_representante VARCHAR(50),
  proveedor_sort VARCHAR(30),
  proveedor_check VARCHAR(32),
  batch_id BIGINT,
  CONSTRAINT pk_dim_proveedor_std_proveedor PRIMARY KEY(proveedor_sk),
  CONSTRAINT uk_dim_proveedor_std_proveedor UNIQUE(proveedor_bk)
);

ALTER TABLE dim_proveedor_std_proveedor OWNER TO etl_user;

INSERT INTO dim_proveedor_std_proveedor(proveedor_sk, proveedor_bk, proveedor_nombre,  proveedor_cuit, proveedor_direccion,
proveedor_telefono, proveedor_codant, proveedor_beneficiario, proveedor_catganancias, proveedor_fax, proveedor_codpost,
proveedor_subcodpost, proveedor_impganancias, proveedor_impiva, proveedor_monotributo, proveedor_integrantesoc,
proveedor_empleador,  proveedor_fechaact, proveedor_email, proveedor_contacto, proveedor_codigodos,  proveedor_obrapublica,
proveedor_retenciondep, proveedor_origenproveedor, proveedor_representante, proveedor_sort, batch_id)
VALUES(-1, 'DESC', 'Desconocido', 'DESC', 'Desconocido', 'DESC', '-1', 'Desconocido', 'DESC', 'Desconocido', 'DESC', 'DESC',
'-1', '-1', '-1', '','',  'Desconocido', 'Desconocido', 'Desconocido', 'DESC',  '','DESC', '', 'Desconocido',
'ZZZZZZZZZZZZZZZZZZZZ', 0);

INSERT INTO dim_proveedor_std_proveedor(proveedor_sk, proveedor_bk, proveedor_nombre,  proveedor_cuit, proveedor_direccion,
proveedor_telefono, proveedor_codant, proveedor_beneficiario, proveedor_catganancias, proveedor_fax, proveedor_codpost,
proveedor_subcodpost, proveedor_impganancias, proveedor_impiva, proveedor_monotributo, proveedor_integrantesoc,
proveedor_empleador,  proveedor_fechaact, proveedor_email, proveedor_contacto, proveedor_codigodos,  proveedor_obrapublica,
proveedor_retenciondep, proveedor_origenproveedor, proveedor_representante, proveedor_sort, batch_id)
VALUES (-2, 'NA', 'No Aplicable', 'NA', 'No Aplicable', 'NA', '-2', 'No Aplicable', 'NA', 'No Aplicable', 'NA', 'NA',
'-2', '-2', '-2', '','',  'No Aplicable', 'No Aplicable', 'No Aplicable', 'NA',  '','NA', '', 'No Aplicable',
'ZZZZZZZZZZZZZZZZZZZZ', 0);