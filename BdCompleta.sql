USE [DB_HOTEL]
GO
/****** Object:  Table [dbo].[CATEGORIA]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIA](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESTADO_HABITACION]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESTADO_HABITACION](
	[IdEstadoHabitacion] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstadoHabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HABITACION]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HABITACION](
	[IdHabitacion] [int] IDENTITY(1,1) NOT NULL,
	[Numero] [varchar](50) NULL,
	[Detalle] [varchar](100) NULL,
	[Precio] [decimal](10, 2) NULL,
	[IdEstadoHabitacion] [int] NULL,
	[IdPiso] [int] NULL,
	[IdCategoria] [int] NULL,
	[IdHotel] [int] NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOTEL]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOTEL](
	[IdHotel] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONA]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONA](
	[IdPersona] [int] IDENTITY(1,1) NOT NULL,
	[TipoDocumento] [varchar](15) NULL,
	[Documento] [varchar](15) NULL,
	[Nombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NULL,
	[Correo] [varchar](50) NULL,
	[Clave] [varchar](50) NULL,
	[IdTipoPersona] [int] NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PISO]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PISO](
	[IdPiso] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RECEPCION]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECEPCION](
	[IdRecepcion] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NULL,
	[IdHabitacion] [int] NULL,
	[FechaEntrada] [datetime] NULL,
	[FechaSalida] [datetime] NULL,
	[FechaSalidaConfirmacion] [datetime] NULL,
	[PrecioInicial] [decimal](10, 2) NULL,
	[Adelanto] [decimal](10, 2) NULL,
	[PrecioRestante] [decimal](10, 2) NULL,
	[TotalPagado] [decimal](10, 2) NULL,
	[CostoPenalidad] [decimal](10, 2) NULL,
	[Observacion] [varchar](500) NULL,
	[Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRecepcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPO_PERSONA]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPO_PERSONA](
	[IdTipoPersona] [int] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Estado] [bit] NULL,
	[FechaCreacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CATEGORIA] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[CATEGORIA] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[ESTADO_HABITACION] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[ESTADO_HABITACION] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[HABITACION] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[HABITACION] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[HOTEL] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[HOTEL] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[PERSONA] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[PERSONA] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[PISO] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[PISO] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[RECEPCION] ADD  DEFAULT (getdate()) FOR [FechaEntrada]
GO
ALTER TABLE [dbo].[RECEPCION] ADD  DEFAULT ((0)) FOR [TotalPagado]
GO
ALTER TABLE [dbo].[RECEPCION] ADD  DEFAULT ((0)) FOR [CostoPenalidad]
GO
ALTER TABLE [dbo].[TIPO_PERSONA] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[TIPO_PERSONA] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO
ALTER TABLE [dbo].[HABITACION]  WITH CHECK ADD FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[CATEGORIA] ([IdCategoria])
GO
ALTER TABLE [dbo].[HABITACION]  WITH CHECK ADD FOREIGN KEY([IdEstadoHabitacion])
REFERENCES [dbo].[ESTADO_HABITACION] ([IdEstadoHabitacion])
GO
ALTER TABLE [dbo].[HABITACION]  WITH CHECK ADD FOREIGN KEY([IdHotel])
REFERENCES [dbo].[HOTEL] ([IdHotel])
GO
ALTER TABLE [dbo].[HABITACION]  WITH CHECK ADD FOREIGN KEY([IdPiso])
REFERENCES [dbo].[PISO] ([IdPiso])
GO
ALTER TABLE [dbo].[PERSONA]  WITH CHECK ADD FOREIGN KEY([IdTipoPersona])
REFERENCES [dbo].[TIPO_PERSONA] ([IdTipoPersona])
GO
ALTER TABLE [dbo].[RECEPCION]  WITH CHECK ADD FOREIGN KEY([IdCliente])
REFERENCES [dbo].[PERSONA] ([IdPersona])
GO
ALTER TABLE [dbo].[RECEPCION]  WITH CHECK ADD FOREIGN KEY([IdHabitacion])
REFERENCES [dbo].[HABITACION] ([IdHabitacion])
GO
/****** Object:  StoredProcedure [dbo].[sp_ActualizarHotel]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--PROCEDIMIENTO PARA ACTUALZIAR HOTEL
create PROC [dbo].[sp_ActualizarHotel](
@Nombre varchar(50),
@Id varchar(50),
@Estado bit output,
@Resultado bit output
)as
begin
	
	update HOTEL set 
		Nombre = @Nombre,
		Estado = @Estado
		WHERE IdHotel = @Id
	   SET @Resultado = 1
end


GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarCategoria]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDIMIENTO PARA MODIFICAR CATEGORIA
create procedure [dbo].[sp_ModificarCategoria](
@IdCategoria int,
@Descripcion varchar(60),
@Estado bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM CATEGORIA WHERE Descripcion =@Descripcion and IdCategoria != @IdCategoria)
		
		update CATEGORIA set 
		Descripcion = @Descripcion,
		Estado = @Estado
		where IdCategoria = @IdCategoria
	ELSE
		SET @Resultado = 0

end


GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarHabitacion]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDIMIENTO PARA MODIFICAR HABITACION
create procedure [dbo].[sp_ModificarHabitacion](
@IdHabitacion int,
@Numero varchar(50),
@Detalle varchar(100),
@Precio decimal(10,2),
@IdPiso varchar(50),
@IdCategoria varchar(50),
@Estado bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM HABITACION WHERE Numero =@Numero and IdHabitacion != @IdHabitacion)
		
		update HABITACION set 
		Numero = @Numero,
		Detalle = @Detalle,
		Precio = @Precio,
		IdPiso = @IdPiso,
		IdCategoria = @IdCategoria,
		Estado = @Estado
		where IdHabitacion = @IdHabitacion
	ELSE
		SET @Resultado = 0

end






GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarPersona]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDIMIENTO PARA MODIFICAR PERSONA
create procedure [dbo].[sp_ModificarPersona](
@IdPersona int,
@TipoDocumento varchar(50),
@Documento varchar(50),
@Nombre varchar(50),
@Apellido varchar(50),
@Correo varchar(50),
@Clave varchar(50),
@IdTipoPersona int,
@Estado bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM persona WHERE Documento =@Documento and IdPersona != @IdPersona)
		
		update PERSONA set
		TipoDocumento = @TipoDocumento,
		Documento = @Documento,
		Nombre = @Nombre,
		Apellido = @Apellido,
		Correo = @Correo,
		IdTipoPersona = @IdTipoPersona,
		Estado = @Estado
		where IdPersona = @IdPersona
	ELSE
		SET @Resultado = 0

end


GO
/****** Object:  StoredProcedure [dbo].[sp_ModificarPiso]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDIMIENTO PARA MODIFICAR PISOS
create procedure [dbo].[sp_ModificarPiso](
@IdPiso int,
@Descripcion varchar(60),
@Estado bit,
@Resultado bit output
)
as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM PISO WHERE Descripcion =@Descripcion and IdPiso != @IdPiso)
		
		update PISO set 
		Descripcion = @Descripcion,
		Estado = @Estado
		where IdPiso = @IdPiso
	ELSE
		SET @Resultado = 0

end


GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarCategoria]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDIMIENTO PARA GUARDAR CATEGORIA
CREATE PROC [dbo].[sp_RegistrarCategoria](
@Descripcion varchar(50),
@Resultado bit output
)as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM CATEGORIA WHERE Descripcion = @Descripcion)

		insert into CATEGORIA(Descripcion) values (
		@Descripcion
		)
	ELSE
		SET @Resultado = 0
	
end



GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarHabitacion]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDIMIENTO PARA GUARDAR HABITACION
create PROC [dbo].[sp_RegistrarHabitacion](
@Numero varchar(50),
@Detalle varchar(100),
@Precio decimal(10,2),
@IdPiso varchar(50),
@IdCategoria varchar(50),
@IdHotel varchar(50),	
@Resultado bit output
)as
begin
	SET @Resultado = 1

	IF NOT EXISTS (SELECT * FROM HABITACION WHERE Numero = @Numero)

		insert into HABITACION(Numero,Detalle,Precio,IdPiso,IdCategoria,IdEstadoHabitacion,IdHotel) values (
		@Numero,@Detalle,@Precio,@IdPiso,@IdCategoria,1,@IdHotel		
		)
		
	ELSE
		SET @Resultado = 0
	
end



GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarHotel]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--PROCEDIMIENTO PARA GUARDAR HOTEL
create PROC [dbo].[sp_RegistrarHotel](
@Nombre varchar(50),
@Estado bit output
)as
begin
	SET @Estado = 1
	IF NOT EXISTS (SELECT * FROM HOTEL WHERE Nombre = @Nombre)

		insert into HOTEL(Nombre,Estado) values (
		@Nombre,@Estado
		)
	ELSE
	--update HOTEL set 
	--	Nombre = @Nombre,
	--	Estado = @Estado
	--	WHERE Nombre = @Nombre
		SET @Estado = 0
	
end


GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarPersona]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--PROCEDIMIENTO PARA GUARDAR PERSONA
create PROC [dbo].[sp_RegistrarPersona](
@TipoDocumento varchar(50),
@Documento varchar(50),
@Nombre varchar(50),
@Apellido varchar(50),
@Correo varchar(50),
@Clave varchar(50),
@IdTipoPersona int,
@Resultado bit output
)as
begin
	SET @Resultado = 1
	DECLARE @IDPERSONA INT 
	IF NOT EXISTS (SELECT * FROM persona WHERE Documento = @Documento)
	begin
		insert into persona(TipoDocumento, Documento,Nombre,Apellido,Correo,Clave,IdTipoPersona) values (
		@TipoDocumento,@Documento,@Nombre,@Apellido,@Correo,@Clave,@IdTipoPersona)
	end
	ELSE
		SET @Resultado = 0
	
end



GO
/****** Object:  StoredProcedure [dbo].[sp_RegistrarPiso]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--PROCEDIMIENTO PARA GUARDAR PISOS
CREATE PROC [dbo].[sp_RegistrarPiso](
@Descripcion varchar(50),
@Resultado bit output
)as
begin
	SET @Resultado = 1
	IF NOT EXISTS (SELECT * FROM PISO WHERE Descripcion = @Descripcion)

		insert into PISO(Descripcion) values (
		@Descripcion
		)
	ELSE
		SET @Resultado = 0
	
end



GO
/****** Object:  StoredProcedure [dbo].[sp_registrarRecepcion]    Script Date: 4/12/2023 10:46:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_registrarRecepcion](
@IdCliente int,
@TipoDocumento varchar(50),
@Documento varchar(50),
@Nombre varchar(50),
@Apellido varchar(50),
@Correo varchar(50),
@IdHabitacion int,
@FechaSalida datetime,
@PrecioInicial decimal(10,2),
@Adelanto decimal(10,2),
@PrecioRestante decimal(10,2),
@Observacion varchar(500),
@Resultado bit output
)
as
begin
	set @Resultado = 1
	begin try
		begin transaction
		if(not exists(select * from persona where IdPersona =@IdCliente ))
		begin
			insert into PERSONA(TipoDocumento,Documento,Nombre,Apellido,Correo,IdTipoPersona) values(
			@TipoDocumento,@Documento,@Nombre,@Apellido,@Correo,3)
			set @IdCliente = SCOPE_IDENTITY()  
		end

		update HABITACION set IdEstadoHabitacion = 2 where IdHabitacion = @IdHabitacion

		insert into RECEPCION(IdCliente,IdHabitacion,FechaSalida,PrecioInicial,Adelanto,PrecioRestante,Observacion,Estado) values
		(@IdCliente,@IdHabitacion,@FechaSalida,@PrecioInicial,@Adelanto,@PrecioRestante,@Observacion,1)

		commit transaction
	end try
	begin catch
		rollback
		set @Resultado = 0
	end catch

end




GO
