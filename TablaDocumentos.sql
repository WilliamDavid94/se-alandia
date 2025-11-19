USE [SIIJACMADRID]
GO

/****** Object:  Table [dbo].[Documentos]    Script Date: 15/11/2025 3:12:29 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Documentos](
	[IdDocumento] [int] NOT NULL,
	[IdJAC] [int] NOT NULL,
	[NombreArchivo] [nchar](100) NOT NULL,
	[Tipo] [nchar](100) NOT NULL,
	[FechaCargue] [datetime] NOT NULL,
	[Documento] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_Documentos] PRIMARY KEY CLUSTERED 
(
	[IdDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Documentos]  WITH CHECK ADD  CONSTRAINT [FK_Documentos_RegistroJAC] FOREIGN KEY([IdJAC])
REFERENCES [dbo].[RegistroJAC] ([IdJAC])
GO

ALTER TABLE [dbo].[Documentos] CHECK CONSTRAINT [FK_Documentos_RegistroJAC]
GO


