-- Crear afiliado
CREATE OR ALTER PROCEDURE sp_AgregarAfiliado
    @IdJAC INT,
    @Nombre NVARCHAR(150),
    @Apellido NVARCHAR(150),
    @FechaNacimiento DATE,
    @Sexo CHAR(1),
    @Telefono NVARCHAR(50),
    @Direccion NVARCHAR(300),
    @NivelEducativo NVARCHAR(100),
    @Ocupacion NVARCHAR(150)
AS
BEGIN
    INSERT INTO dbo.RegistroAfiliado (IdJAC, Nombre, Apellido, FechaNacimiento, Sexo, Telefono, Direccion, NivelEducativo, Ocupacion)
    VALUES (@IdJAC, @Nombre, @Apellido, @FechaNacimiento, @Sexo, @Telefono, @Direccion, @NivelEducativo, @Ocupacion);
END;
GO

-- Consultar afiliados por JAC
CREATE OR ALTER PROCEDURE sp_ConsultarAfiliadosPorJAC
    @IdJAC INT
AS
BEGIN
    SELECT * FROM dbo.RegistroAfiliado WHERE IdJAC = @IdJAC;
END;
GO

-- Actualizar afiliado
CREATE OR ALTER PROCEDURE sp_ActualizarAfiliado
    @IdAfiliado INT,
    @Telefono NVARCHAR(50),
    @Direccion NVARCHAR(300),
    @NivelEducativo NVARCHAR(100),
    @Ocupacion NVARCHAR(150)
AS
BEGIN
    UPDATE dbo.RegistroAfiliado
    SET Telefono = @Telefono,
        Direccion = @Direccion,
        NivelEducativo = @NivelEducativo,
        Ocupacion = @Ocupacion
    WHERE IdAfiliado = @IdAfiliado;
END;
GO