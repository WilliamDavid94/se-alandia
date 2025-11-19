-- Subir documento
CREATE OR ALTER PROCEDURE sp_SubirDocumento
    @IdJAC INT,
    @NombreArchivo NVARCHAR(250),
    @Tipo NVARCHAR(100),
    @RutaArchivo NVARCHAR(500)
AS
BEGIN
    INSERT INTO dbo.Documentos (IdJAC, NombreArchivo, Tipo, RutaArchivo)
    VALUES (@IdJAC, @NombreArchivo, @Tipo, @RutaArchivo);
END;
GO

-- Consultar documentos por JAC
CREATE OR ALTER PROCEDURE sp_ListarDocumentosPorJAC
    @IdJAC INT
AS
BEGIN
    SELECT IdDocumento, NombreArchivo, Tipo, FechaCargue, RutaArchivo
    FROM dbo.Documentos
    WHERE IdJAC = @IdJAC
    ORDER BY FechaCargue DESC;
END;
GO