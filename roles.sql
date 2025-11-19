-- =========================================================
-- ROLES Y PERMISOS - SIIJAC
-- =========================================================
USE SIIJAC;
GO

-- Crear roles
CREATE ROLE RolAdministrador;
CREATE ROLE RolDirectivo;
CREATE ROLE RolAfiliado;
GO

-- =====================================
-- PERMISOS POR ROL
-- =====================================

-- Administrador: acceso total
GRANT SELECT, INSERT, UPDATE, DELETE ON SCHEMA::dbo TO RolAdministrador;
GRANT EXECUTE TO RolAdministrador;

-- Directivo: puede ver y actualizar su JAC, cargar documentos, ver afiliados
GRANT SELECT, UPDATE, INSERT ON dbo.RegistroDirectivo TO RolDirectivo;
GRANT SELECT ON dbo.RegistroAfiliado TO RolDirectivo;
GRANT SELECT, INSERT, UPDATE ON dbo.Documentos TO RolDirectivo;
GRANT SELECT ON dbo.RegistroJAC TO RolDirectivo;

-- Afiliado: solo puede consultar su información y la de su JAC
GRANT SELECT ON dbo.RegistroAfiliado TO RolAfiliado;
GRANT SELECT ON dbo.RegistroJAC TO RolAfiliado;
GRANT SELECT ON dbo.Documentos TO RolAfiliado;
GO