USE [SIIJACMADRID]
GO

/****** Object:  Table [dbo].[RegistroAfiliado]    Script Date: 15/11/2025 3:13:33 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RegistroAfiliado](
	[Id] [int] NOT NULL,
	[IdJAC] [int] NOT NULL,
	[Nombre] [nchar](60) NOT NULL,
	[Apellido] [nchar](60) NOT NULL,
	[FechaNacimiento] [datetime] NOT NULL,
	[Sexo] [nchar](10) NOT NULL,
	[Edad] [int] NOT NULL,
	[Telefono] [int] NOT NULL,
	[Direccion] [nchar](100) NOT NULL,
	[NivelEducativo] [nchar](100) NOT NULL,
	[Ocupacion] [nchar](100) NOT NULL,
 CONSTRAINT [PK_RegistroAfiliado] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RegistroAfiliado]  WITH CHECK ADD  CONSTRAINT [FK_RegistroAfiliado_RegistroJAC] FOREIGN KEY([IdJAC])
REFERENCES [dbo].[RegistroJAC] ([IdJAC])
GO

ALTER TABLE [dbo].[RegistroAfiliado] CHECK CONSTRAINT [FK_RegistroAfiliado_RegistroJAC]
GO


