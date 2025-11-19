USE [SIIJACMADRID]
GO

/****** Object:  Table [dbo].[RegistroJAC]    Script Date: 15/11/2025 3:14:24 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RegistroJAC](
	[IdJAC] [int] NOT NULL,
	[NombreJAC] [nchar](100) NOT NULL,
	[NumPersoneriaJuridica] [int] NOT NULL,
	[FechaExpPersoneria] [datetime] NOT NULL,
	[EntidadQueExpide] [nchar](100) NOT NULL,
	[CorreoJAC] [nchar](100) NOT NULL,
	[Clave] [nchar](100) NOT NULL,
 CONSTRAINT [PK_RegistroJAC] PRIMARY KEY CLUSTERED 
(
	[IdJAC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


