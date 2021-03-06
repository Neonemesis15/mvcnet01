USE [BancoNet]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 13/12/2016 07:27:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[NroCliente] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[NroCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CuentasCorrientes]    Script Date: 13/12/2016 07:27:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuentasCorrientes](
	[NroCuentaCorriente] [varchar](50) NOT NULL,
	[NroCliente] [int] NULL,
	[Saldo] [decimal](18, 0) NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_CuentasCorrientes] PRIMARY KEY CLUSTERED 
(
	[NroCuentaCorriente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Movimientos]    Script Date: 13/12/2016 07:27:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movimientos](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[CtaOrigen] [varchar](50) NOT NULL,
	[CtaDestino] [varchar](50) NULL,
	[CodTipoMovimiento] [varchar](50) NULL,
	[Monto] [numeric](18, 2) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_Movimientos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoMovimiento]    Script Date: 13/12/2016 07:27:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMovimiento](
	[CodTipoMovimiento] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_TipoMovimiento] PRIMARY KEY CLUSTERED 
(
	[CodTipoMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (1, N'ALVARO', N'VELEZ DE LA ROSA')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (2, N'DIEGO MAURICIO', N'RUBIO ROMERO')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (3, N'JESUS', N'GALEANA MONTES')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (4, N'ROSARIO', N'MAZUERA DE KLING')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (5, N'CARLOS FERNANDO', N'GEDEON JUAN')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (6, N'JOSE NAPOLEON', N'RUIZ CUBILLOS')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (7, N'LUCILA', N'ESCOBAR ARISTIZABAL')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (8, N'DIANA', N'VIDALES LARRARTE')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (9, N'JUAN DAVID', N'RICO RESTREPO')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (10, N'LUIS', N'NORBERTO ARBOLEDA')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (11, N'JUDITH JANE', N'GILBERT DE LEAVER')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (12, N'GIUSEPPE', N'FASANELLI BEGGIO')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (13, N'ALLAN', N'PEARSON')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (14, N'MAURICIO', N'SERRANO TORRES')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (15, N'LEONARDO', N'KATZ STEIN')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (16, N'HIPOLITO', N'PINTO')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (17, N'FRANCISCO JOSE', N'HURTADO PEREZ')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (18, N'FERNANDA', N'ZAPATA GONZALEZ')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (19, N'GERMAN', N'RESTREPO CASTRO')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (20, N'JAIRO', N'UPEGUI HENAO')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (21, N'RAUL', N'MATEUS BLANCO')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (22, N'GUILLERMO', N'RAMIREZ CABRALES')
GO
INSERT [dbo].[Clientes] ([NroCliente], [Nombre], [Apellido]) VALUES (23, N'CARMENZA', N'FINA DE VALLE')
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'800016314', 2, CAST(6188 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'800016315', 2, CAST(1070 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'800020712', 9, CAST(1096 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'800020713', 9, CAST(7096 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'800025418', 10, CAST(6157 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'800025419', 10, CAST(3520 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'800058886', 3, CAST(7820 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'800058887', 3, CAST(5368 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'800100592', 4, CAST(4851 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'800100593', 4, CAST(5295 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'800112466', 20, CAST(5456 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'800112467', 20, CAST(7752 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'800141809', 11, CAST(6782 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'800141810', 11, CAST(5238 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'800211020', 12, CAST(6859 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'800211021', 12, CAST(7634 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'806001219', 5, CAST(4737 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'806001220', 5, CAST(7650 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'809001733', 21, CAST(1095 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'809001734', 21, CAST(1127 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'830013534', 13, CAST(8327 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'830013535', 13, CAST(2150 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'860002022', 6, CAST(5181 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'860002023', 6, CAST(1087 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'860090230', 14, CAST(2789 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'860090231', 14, CAST(1941 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'860510431', 1, CAST(9450 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'860510432', 1, CAST(6251 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'860521086', 15, CAST(3601 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'860521087', 15, CAST(7690 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'860535281', 7, CAST(5059 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'860535282', 7, CAST(5480 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'890204041', 16, CAST(4475 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'890204042', 16, CAST(5332 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'890212985', 22, CAST(2536 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'890212986', 22, CAST(8356 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'890403995', 8, CAST(4148 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'890403996', 8, CAST(9149 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'890700010', 17, CAST(3747 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'890700011', 17, CAST(3814 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'890921820', 18, CAST(4129 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'890921821', 18, CAST(9435 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'890935707', 19, CAST(6070 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'890935708', 19, CAST(4617 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'891300245', 23, CAST(8256 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[CuentasCorrientes] ([NroCuentaCorriente], [NroCliente], [Saldo], [Fecha]) VALUES (N'891300246', 23, CAST(8235 AS Decimal(18, 0)), CAST(N'2016-12-13T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Movimientos] ON 

GO
INSERT [dbo].[Movimientos] ([Codigo], [CtaOrigen], [CtaDestino], [CodTipoMovimiento], [Monto], [Fecha]) VALUES (3, N'800020712', N'800025418', N'1', CAST(8.80 AS Numeric(18, 2)), CAST(N'2016-12-13T19:01:03.260' AS DateTime))
GO
INSERT [dbo].[Movimientos] ([Codigo], [CtaOrigen], [CtaDestino], [CodTipoMovimiento], [Monto], [Fecha]) VALUES (4, N'800016314', N'800025419', N'2', CAST(5999.00 AS Numeric(18, 2)), CAST(N'2016-12-13T19:01:06.700' AS DateTime))
GO
INSERT [dbo].[Movimientos] ([Codigo], [CtaOrigen], [CtaDestino], [CodTipoMovimiento], [Monto], [Fecha]) VALUES (5, N'800100592', N'800141809', N'2', CAST(200.00 AS Numeric(18, 2)), CAST(N'2016-12-13T15:29:33.360' AS DateTime))
GO
INSERT [dbo].[Movimientos] ([Codigo], [CtaOrigen], [CtaDestino], [CodTipoMovimiento], [Monto], [Fecha]) VALUES (6, N'806001220', N'809001734', N'1', CAST(577.00 AS Numeric(18, 2)), CAST(N'2016-12-13T19:25:04.960' AS DateTime))
GO
INSERT [dbo].[Movimientos] ([Codigo], [CtaOrigen], [CtaDestino], [CodTipoMovimiento], [Monto], [Fecha]) VALUES (7, N'800058887', N'800211020', N'1', CAST(399.00 AS Numeric(18, 2)), CAST(N'2016-12-13T15:30:56.527' AS DateTime))
GO
INSERT [dbo].[Movimientos] ([Codigo], [CtaOrigen], [CtaDestino], [CodTipoMovimiento], [Monto], [Fecha]) VALUES (10, N'806001219', N'809001733', N'1', CAST(100.00 AS Numeric(18, 2)), CAST(N'2016-12-13T15:35:06.220' AS DateTime))
GO
INSERT [dbo].[Movimientos] ([Codigo], [CtaOrigen], [CtaDestino], [CodTipoMovimiento], [Monto], [Fecha]) VALUES (11, N'800211020', N'809001733', N'1', CAST(233.00 AS Numeric(18, 2)), CAST(N'2016-12-13T15:59:48.310' AS DateTime))
GO
INSERT [dbo].[Movimientos] ([Codigo], [CtaOrigen], [CtaDestino], [CodTipoMovimiento], [Monto], [Fecha]) VALUES (12, N'800100592', N'806001219', N'2', CAST(500.00 AS Numeric(18, 2)), CAST(N'2016-12-13T16:22:42.897' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Movimientos] OFF
GO
INSERT [dbo].[TipoMovimiento] ([CodTipoMovimiento], [Descripcion]) VALUES (N'1', N'Deposito Bancario')
GO
INSERT [dbo].[TipoMovimiento] ([CodTipoMovimiento], [Descripcion]) VALUES (N'2', N'Retiro Bancario')
GO
ALTER TABLE [dbo].[CuentasCorrientes]  WITH CHECK ADD  CONSTRAINT [FK_CuentasCorrientes_Clientes] FOREIGN KEY([NroCliente])
REFERENCES [dbo].[Clientes] ([NroCliente])
GO
ALTER TABLE [dbo].[CuentasCorrientes] CHECK CONSTRAINT [FK_CuentasCorrientes_Clientes]
GO
ALTER TABLE [dbo].[Movimientos]  WITH CHECK ADD  CONSTRAINT [FK_Movimientos_CuentasCorrientes] FOREIGN KEY([CtaOrigen])
REFERENCES [dbo].[CuentasCorrientes] ([NroCuentaCorriente])
GO
ALTER TABLE [dbo].[Movimientos] CHECK CONSTRAINT [FK_Movimientos_CuentasCorrientes]
GO
ALTER TABLE [dbo].[Movimientos]  WITH CHECK ADD  CONSTRAINT [FK_Movimientos_CuentasCorrientes1] FOREIGN KEY([CtaDestino])
REFERENCES [dbo].[CuentasCorrientes] ([NroCuentaCorriente])
GO
ALTER TABLE [dbo].[Movimientos] CHECK CONSTRAINT [FK_Movimientos_CuentasCorrientes1]
GO
ALTER TABLE [dbo].[Movimientos]  WITH CHECK ADD  CONSTRAINT [FK_Movimientos_TipoMovimiento] FOREIGN KEY([CodTipoMovimiento])
REFERENCES [dbo].[TipoMovimiento] ([CodTipoMovimiento])
GO
ALTER TABLE [dbo].[Movimientos] CHECK CONSTRAINT [FK_Movimientos_TipoMovimiento]
GO
/****** Object:  StoredProcedure [dbo].[usp_CtaCorriente_Existe]    Script Date: 13/12/2016 07:27:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_CtaCorriente_Existe]
@CtaCorriente        varchar(50),
@Result              bit output
as
begin
	IF EXISTS( select NroCuentaCorriente  from CuentasCorrientes where NroCuentaCorriente = @CtaCorriente)
		BEGIN
			SET @Result = 1;
		END
	ELSE
		BEGIN
			SET @Result = 0;
		END

return 0
end;
GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_Actualizar]    Script Date: 13/12/2016 07:27:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_Movimiento_Actualizar]
@CtaOrigen           varchar(50),
@CtaDestino          varchar(50),
@CodTipoMovimiento   varchar(50),
@Monto               varchar(50),
@Codigo              varchar(50)
as
begin
	
UPDATE [dbo].[Movimientos]
   SET [CtaOrigen] = @CtaOrigen
      ,[CtaDestino] = @CtaDestino
      ,[CodTipoMovimiento] = @CodTipoMovimiento
      ,[Monto] = @Monto
      ,[Fecha] = GETDATE()
 WHERE Codigo = @Codigo;
	
	
return 0
end;



GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_Consultar]    Script Date: 13/12/2016 07:27:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_Movimiento_Consultar]
@Codigo varchar(50)
as
begin
	SELECT [Codigo]
		  ,[CtaOrigen]
		  ,[CtaDestino]
		  ,[CodTipoMovimiento]
		  ,[Monto]
		  ,[Fecha]
	  FROM [dbo].[Movimientos]
	WHERE codigo=@Codigo;
end;



GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_Eliminar]    Script Date: 13/12/2016 07:27:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_Movimiento_Eliminar]
@Codigo              varchar(50)
as
begin
	
DELETE FROM [dbo].[Movimientos]
 WHERE Codigo = @Codigo;
	
return 0
end;

GO
/****** Object:  StoredProcedure [dbo].[usp_Movimiento_Listar]    Script Date: 13/12/2016 07:27:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_Movimiento_Listar]
as
begin
	SELECT [Codigo]
		  ,[CtaOrigen]
		  ,[CtaDestino]
		  ,[CodTipoMovimiento]
		  ,[Monto]
		  ,[Fecha]
	  FROM [dbo].[Movimientos]
end;



GO
/****** Object:  StoredProcedure [dbo].[usp_MovimientoNuevo]    Script Date: 13/12/2016 07:27:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_MovimientoNuevo]
@CtaOrigen           varchar(50),
@CtaDestino          varchar(50),
@CodTipoMovimiento   varchar(50),
@Monto               varchar(50),
@Codigo              varchar(50) output
as
begin
	INSERT INTO [dbo].[Movimientos]
			   ([CtaOrigen]
			   ,[CtaDestino]
			   ,[CodTipoMovimiento]
			   ,[Monto]
			   ,[Fecha])
		 VALUES
			   (@CtaOrigen
			   ,@CtaDestino
			   ,@CodTipoMovimiento
			   ,@Monto
			   ,GETDATE())

	SET @Codigo = SCOPE_IDENTITY()

return 0
end;



GO
