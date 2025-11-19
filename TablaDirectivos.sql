USE [SIIJACMADRID]
GO

/****** Object:  Table [dbo].[RegistroDirectivo]    Script Date: 15/11/2025 3:14:01 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RegistroDirectivo](
	[IdRegistro] [int] NOT NULL,
	[IdJac] [int] NOT NULL,
	[Nombre] [nchar](100) NOT NULL,
	[Apellido] [nchar](100) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Correo] [nchar](100) NOT NULL,
	[Direccion] [nchar](100) NOT NULL,
	[Cargo] [nchar](50) NOT NULL,
 CONSTRAINT [PK_RegistroDirectivo] PRIMARY KEY CLUSTERED 
(
	[IdRegistro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RegistroDirectivo]  WITH CHECK ADD  CONSTRAINT [FK_RegistroDirectivo_RegistroJAC1] FOREIGN KEY([IdJac])
REFERENCES [dbo].[RegistroJAC] ([IdJAC])
GO

ALTER TABLE [dbo].[RegistroDirectivo] CHECK CONSTRAINT [FK_RegistroDirectivo_RegistroJAC1]
GO


