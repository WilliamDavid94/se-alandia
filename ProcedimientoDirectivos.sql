-- Registrar directivo
CREATE OR ALTER PROCEDURE sp_AgregarDirectivo
    @IdJAC INT,
    @Nombre NVARCHAR(150),
    @Apellido NVARCHAR(150),
    @Telefono NVARCHAR(50),
    @Correo NVARCHAR(200),
    @Direccion NVARCHAR(300),
    @Cargo NVARCHAR(100)
AS
BEGIN
    INSERT INTO dbo.RegistroDirectivo (IdJAC, Nombre, Apellido, Telefono, Correo, Direccion, Cargo)
    VALUES (@IdJAC, @Nombre, @Apellido, @Telefono, @Correo, @Direccion, @Cargo);
END;
GO