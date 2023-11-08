USE [master]
GO
/****** Object:  Database [BDParcial2Estudiante1yEstudiante2]    Script Date: 7/11/2023 21:38:18 ******/
CREATE DATABASE [BDParcial2Estudiante1yEstudiante2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDParcial2Estudiante1yEstudiante2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BDParcial2Estudiante1yEstudiante2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BDParcial2Estudiante1yEstudiante2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\BDParcial2Estudiante1yEstudiante2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDParcial2Estudiante1yEstudiante2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET  MULTI_USER 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET QUERY_STORE = ON
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BDParcial2Estudiante1yEstudiante2]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 7/11/2023 21:38:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ID] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[DepartamentoID] [int] NULL,
	[MunicipioID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamento]    Script Date: 7/11/2023 21:38:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamento](
	[ID] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 7/11/2023 21:38:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[ID] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[DepartamentoID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([ID], [Nombre], [Apellido], [DepartamentoID], [MunicipioID]) VALUES (1, N'Cliente1', N'Apellido1', 1, 1)
INSERT [dbo].[Cliente] ([ID], [Nombre], [Apellido], [DepartamentoID], [MunicipioID]) VALUES (2, N'Cliente2', N'Apellido2', 2, 4)
GO
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (1, N'SONSONATE')
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (2, N'LA LIBERTA ')
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (3, N'SAN SALVADOR')
INSERT [dbo].[Departamento] ([ID], [Nombre]) VALUES (4, N'SAN VICENTE')
GO
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (1, N'ACAJUTLA', 1)
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (2, N'IZALCO', 1)
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (3, N'NAUHIZALCO', 1)
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (4, N'SAN JUAN OPICO', 2)
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (5, N'SANTA TECLA', 2)
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (6, N'JAYAQUE', 2)
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (7, N'APOPA', 3)
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (8, N'AGUILARES', 3)
INSERT [dbo].[Municipio] ([ID], [Nombre], [DepartamentoID]) VALUES (9, N'CIUDAD DELGADO', 3)
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([DepartamentoID])
REFERENCES [dbo].[Departamento] ([ID])
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD FOREIGN KEY([MunicipioID])
REFERENCES [dbo].[Municipio] ([ID])
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD FOREIGN KEY([DepartamentoID])
REFERENCES [dbo].[Departamento] ([ID])
GO
USE [master]
GO
ALTER DATABASE [BDParcial2Estudiante1yEstudiante2] SET  READ_WRITE 
GO
