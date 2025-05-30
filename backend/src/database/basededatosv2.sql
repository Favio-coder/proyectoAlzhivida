USE [alzhivida]
GO
/****** Object:  Table [dbo].[Comentario]    Script Date: 5/22/2025 1:07:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentario](
	[c_comen] [char](18) NOT NULL,
	[c_usua] [nvarchar](60) NULL,
	[c_publi] [nvarchar](60) NULL,
	[l_comen] [text] NULL,
	[f_comentario] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[c_comen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompraMembresias]    Script Date: 5/22/2025 1:07:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompraMembresias](
	[c_comMem] [varchar](60) NOT NULL,
	[c_usua] [nvarchar](60) NULL,
	[c_membre] [char](100) NULL,
	[s_importTotal] [float] NULL,
	[f_inicio] [datetime] NULL,
	[f_final] [datetime] NULL,
	[f_compra] [datetime] NULL,
	[c_estado] [char](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[c_comMem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleSesion]    Script Date: 5/22/2025 1:07:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleSesion](
	[c_detSesion] [char](18) NOT NULL,
	[c_sesion] [nvarchar](60) NULL,
	[c_usuaInscrito] [nvarchar](60) NULL,
	[f_inscrib] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[c_detSesion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Etiqueta]    Script Date: 5/22/2025 1:07:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etiqueta](
	[c_etiqueta] [nvarchar](60) NOT NULL,
	[l_etiqueta] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[c_etiqueta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Membresia]    Script Date: 5/22/2025 1:07:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membresia](
	[c_membre] [char](100) NOT NULL,
	[l_membre] [varchar](50) NULL,
	[l_descrip] [text] NULL,
	[n_duraDias] [int] NULL,
	[s_cost] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[c_membre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notificacion]    Script Date: 5/22/2025 1:07:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notificacion](
	[c_notificacion] [nvarchar](60) NOT NULL,
	[c_usua] [nvarchar](60) NULL,
	[l_tipoEvento] [varchar](max) NULL,
	[c_origen] [nvarchar](max) NULL,
	[l_mensaje] [text] NULL,
	[f_generada] [datetime] NULL,
	[q_vista] [numeric](1, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[c_notificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publicacion]    Script Date: 5/22/2025 1:07:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publicacion](
	[c_publi] [nvarchar](60) NOT NULL,
	[c_usua] [nvarchar](60) NULL,
	[l_publi] [text] NULL,
	[l_descripPubli] [text] NULL,
	[l_nomArchivo] [text] NULL,
	[l_rutaArchivo] [varchar](75) NULL,
	[f_publicacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[c_publi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PublicacionHistorico]    Script Date: 5/22/2025 1:07:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublicacionHistorico](
	[c_publi] [nvarchar](60) NOT NULL,
	[f_publicacionHistorico] [datetime] NOT NULL,
	[f_registro] [datetime] NOT NULL,
 CONSTRAINT [PK_PublicacionHistorico] PRIMARY KEY CLUSTERED 
(
	[c_publi] ASC,
	[f_publicacionHistorico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reaccion]    Script Date: 5/22/2025 1:07:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reaccion](
	[c_reac] [char](100) NOT NULL,
	[l_reac] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[c_reac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReaccionPublicacion]    Script Date: 5/22/2025 1:07:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReaccionPublicacion](
	[c_reacPubli] [nvarchar](60) NOT NULL,
	[c_publi] [nvarchar](60) NOT NULL,
	[c_usua] [nvarchar](60) NOT NULL,
	[c_reac] [char](100) NOT NULL,
	[f_reacPubli] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[c_reacPubli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reporte]    Script Date: 5/22/2025 1:07:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reporte](
	[c_reporte] [char](18) NOT NULL,
	[c_publi] [nvarchar](60) NULL,
	[c_usua] [nvarchar](60) NULL,
	[c_motivoRepor] [text] NULL,
	[f_repor] [datetime] NULL,
 CONSTRAINT [pk_c_reporte] PRIMARY KEY CLUSTERED 
(
	[c_reporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 5/22/2025 1:07:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[c_rol] [char](100) NOT NULL,
	[l_rol] [varchar](50) NULL,
	[l_descripcion] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[c_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sesion]    Script Date: 5/22/2025 1:07:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sesion](
	[c_sesion] [nvarchar](60) NOT NULL,
	[l_sesion] [text] NULL,
	[l_descripcion] [text] NULL,
	[l_linkAdjuntar] [varchar](300) NULL,
	[q_exclusivo] [numeric](1, 0) NULL,
	[l_linkImagen] [varchar](300) NULL,
	[f_sesion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[c_sesion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SesionEtiqueta]    Script Date: 5/22/2025 1:07:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SesionEtiqueta](
	[c_sesionEtiqueta] [nvarchar](60) NOT NULL,
	[c_sesion] [nvarchar](60) NOT NULL,
	[c_etiqueta] [nvarchar](60) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[c_sesionEtiqueta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SesionHistorico]    Script Date: 5/22/2025 1:07:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SesionHistorico](
	[c_sesion] [nvarchar](60) NOT NULL,
	[f_sesionHistorico] [datetime] NOT NULL,
	[f_registro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[c_sesion] ASC,
	[f_sesionHistorico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 5/22/2025 1:07:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[c_usua] [nvarchar](60) NOT NULL,
	[c_rol] [char](100) NULL,
	[l_nomUsua] [text] NULL,
	[l_apellUsua] [text] NULL,
	[f_nacimiento] [datetime] NULL,
	[l_emailUsua] [text] NULL,
	[l_genUsua] [char](20) NULL,
	[l_fotUsua] [char](75) NULL,
	[l_paisUsua] [char](75) NULL,
	[l_contraUsua] [varchar](30) NULL,
	[q_membresia] [numeric](1, 0) NULL,
	[f_creacion] [datetime] NULL,
	[n_ticket] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[c_usua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Notificacion] ADD  DEFAULT ((0)) FOR [q_vista]
GO
ALTER TABLE [dbo].[Comentario]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Comentario] FOREIGN KEY([c_publi])
REFERENCES [dbo].[Publicacion] ([c_publi])
GO
ALTER TABLE [dbo].[Comentario] CHECK CONSTRAINT [FK_Publicacion_Comentario]
GO
ALTER TABLE [dbo].[Comentario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Comentario] FOREIGN KEY([c_usua])
REFERENCES [dbo].[Usuario] ([c_usua])
GO
ALTER TABLE [dbo].[Comentario] CHECK CONSTRAINT [FK_Usuario_Comentario]
GO
ALTER TABLE [dbo].[CompraMembresias]  WITH CHECK ADD  CONSTRAINT [FK_membresias_compraMembresias] FOREIGN KEY([c_membre])
REFERENCES [dbo].[Membresia] ([c_membre])
GO
ALTER TABLE [dbo].[CompraMembresias] CHECK CONSTRAINT [FK_membresias_compraMembresias]
GO
ALTER TABLE [dbo].[CompraMembresias]  WITH CHECK ADD  CONSTRAINT [FK_usuario_compraMembresias] FOREIGN KEY([c_usua])
REFERENCES [dbo].[Usuario] ([c_usua])
GO
ALTER TABLE [dbo].[CompraMembresias] CHECK CONSTRAINT [FK_usuario_compraMembresias]
GO
ALTER TABLE [dbo].[DetalleSesion]  WITH CHECK ADD  CONSTRAINT [FK_DetalleSesion_Sesion] FOREIGN KEY([c_sesion])
REFERENCES [dbo].[Sesion] ([c_sesion])
GO
ALTER TABLE [dbo].[DetalleSesion] CHECK CONSTRAINT [FK_DetalleSesion_Sesion]
GO
ALTER TABLE [dbo].[DetalleSesion]  WITH CHECK ADD  CONSTRAINT [FK_DetalleSesion_Usuario] FOREIGN KEY([c_usuaInscrito])
REFERENCES [dbo].[Usuario] ([c_usua])
GO
ALTER TABLE [dbo].[DetalleSesion] CHECK CONSTRAINT [FK_DetalleSesion_Usuario]
GO
ALTER TABLE [dbo].[Notificacion]  WITH CHECK ADD  CONSTRAINT [FK_Notificacion_Usuario] FOREIGN KEY([c_usua])
REFERENCES [dbo].[Usuario] ([c_usua])
GO
ALTER TABLE [dbo].[Notificacion] CHECK CONSTRAINT [FK_Notificacion_Usuario]
GO
ALTER TABLE [dbo].[Publicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Usuario] FOREIGN KEY([c_usua])
REFERENCES [dbo].[Usuario] ([c_usua])
GO
ALTER TABLE [dbo].[Publicacion] CHECK CONSTRAINT [FK_Publicacion_Usuario]
GO
ALTER TABLE [dbo].[PublicacionHistorico]  WITH CHECK ADD  CONSTRAINT [FK_PublicacionHistorico_Publicacion] FOREIGN KEY([c_publi])
REFERENCES [dbo].[Publicacion] ([c_publi])
GO
ALTER TABLE [dbo].[PublicacionHistorico] CHECK CONSTRAINT [FK_PublicacionHistorico_Publicacion]
GO
ALTER TABLE [dbo].[ReaccionPublicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_ReaccionPublicacion] FOREIGN KEY([c_publi])
REFERENCES [dbo].[Publicacion] ([c_publi])
GO
ALTER TABLE [dbo].[ReaccionPublicacion] CHECK CONSTRAINT [FK_Publicacion_ReaccionPublicacion]
GO
ALTER TABLE [dbo].[ReaccionPublicacion]  WITH CHECK ADD  CONSTRAINT [FK_Reaccion_ReaccionPublicacion] FOREIGN KEY([c_reac])
REFERENCES [dbo].[Reaccion] ([c_reac])
GO
ALTER TABLE [dbo].[ReaccionPublicacion] CHECK CONSTRAINT [FK_Reaccion_ReaccionPublicacion]
GO
ALTER TABLE [dbo].[ReaccionPublicacion]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_ReaccionPublicacion] FOREIGN KEY([c_usua])
REFERENCES [dbo].[Usuario] ([c_usua])
GO
ALTER TABLE [dbo].[ReaccionPublicacion] CHECK CONSTRAINT [FK_Usuario_ReaccionPublicacion]
GO
ALTER TABLE [dbo].[Reporte]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Reporte] FOREIGN KEY([c_publi])
REFERENCES [dbo].[Publicacion] ([c_publi])
GO
ALTER TABLE [dbo].[Reporte] CHECK CONSTRAINT [FK_Publicacion_Reporte]
GO
ALTER TABLE [dbo].[Reporte]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Reporte] FOREIGN KEY([c_usua])
REFERENCES [dbo].[Usuario] ([c_usua])
GO
ALTER TABLE [dbo].[Reporte] CHECK CONSTRAINT [FK_Usuario_Reporte]
GO
ALTER TABLE [dbo].[SesionEtiqueta]  WITH CHECK ADD  CONSTRAINT [FK_SesionEtiqueta_Etiqueta] FOREIGN KEY([c_etiqueta])
REFERENCES [dbo].[Etiqueta] ([c_etiqueta])
GO
ALTER TABLE [dbo].[SesionEtiqueta] CHECK CONSTRAINT [FK_SesionEtiqueta_Etiqueta]
GO
ALTER TABLE [dbo].[SesionEtiqueta]  WITH CHECK ADD  CONSTRAINT [FK_SesionEtiqueta_Sesion] FOREIGN KEY([c_sesion])
REFERENCES [dbo].[Sesion] ([c_sesion])
GO
ALTER TABLE [dbo].[SesionEtiqueta] CHECK CONSTRAINT [FK_SesionEtiqueta_Sesion]
GO
ALTER TABLE [dbo].[SesionHistorico]  WITH CHECK ADD  CONSTRAINT [FK_SesionHistorico_Sesion] FOREIGN KEY([c_sesion])
REFERENCES [dbo].[Sesion] ([c_sesion])
GO
ALTER TABLE [dbo].[SesionHistorico] CHECK CONSTRAINT [FK_SesionHistorico_Sesion]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [fk_usuario_rol] FOREIGN KEY([c_rol])
REFERENCES [dbo].[Rol] ([c_rol])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [fk_usuario_rol]
GO
