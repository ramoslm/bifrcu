-- Con esto se soluciona el problema de que no se gurdan las autorizaciones para los roles de SpagoBI
-- Ejecutar sobre la BD de metadata, spagobi
ALTER TABLE sbi_authorizations ALTER COLUMN creation_date SET DEFAULT NOW()::DATE;

ALTER TABLE sbi_authorizations ALTER COLUMN last_change_date SET DEFAULT NOW()::DATE;