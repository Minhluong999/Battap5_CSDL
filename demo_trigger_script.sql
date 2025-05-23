USE [master]
GO
/****** Object:  Database [VEXEBUS]    Script Date: 23/04/2025 9:05:00 CH ******/
CREATE DATABASE [VEXEBUS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VEXEBUS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.LUONGM\MSSQL\DATA\VEXEBUS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VEXEBUS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.LUONGM\MSSQL\DATA\VEXEBUS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [VEXEBUS] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VEXEBUS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VEXEBUS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VEXEBUS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VEXEBUS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VEXEBUS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VEXEBUS] SET ARITHABORT OFF 
GO
ALTER DATABASE [VEXEBUS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VEXEBUS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VEXEBUS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VEXEBUS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VEXEBUS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VEXEBUS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VEXEBUS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VEXEBUS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VEXEBUS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VEXEBUS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [VEXEBUS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VEXEBUS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VEXEBUS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VEXEBUS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VEXEBUS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VEXEBUS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [VEXEBUS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VEXEBUS] SET RECOVERY FULL 
GO
ALTER DATABASE [VEXEBUS] SET  MULTI_USER 
GO
ALTER DATABASE [VEXEBUS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VEXEBUS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VEXEBUS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VEXEBUS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VEXEBUS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [VEXEBUS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'VEXEBUS', N'ON'
GO
ALTER DATABASE [VEXEBUS] SET QUERY_STORE = ON
GO
ALTER DATABASE [VEXEBUS] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [VEXEBUS]
GO
/****** Object:  Table [dbo].[DatVe]    Script Date: 23/04/2025 9:05:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatVe](
	[MaDatVe] [int] NOT NULL,
	[MaKhachHang] [int] NULL,
	[MaVe] [int] NULL,
	[NgayDatVe] [datetime] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[MaNV] [int] NULL,
	[GhiChu] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDatVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 23/04/2025 9:05:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[SoDienThoai] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichTrinhXeBus]    Script Date: 23/04/2025 9:05:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichTrinhXeBus](
	[MaLichTrinh] [int] NOT NULL,
	[MaXeBus] [int] NULL,
	[MaTuyen] [int] NULL,
	[MaNV] [int] NULL,
	[ThoiGianXuatPhat] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLichTrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVienBanVe]    Script Date: 23/04/2025 9:05:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVienBanVe](
	[MaNV] [int] NOT NULL,
	[TenNV] [nvarchar](100) NULL,
	[SoDienThoai] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TuyenXeBus]    Script Date: 23/04/2025 9:05:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TuyenXeBus](
	[MaTuyen] [int] NOT NULL,
	[TenTuyen] [nvarchar](100) NULL,
	[DiemBatDau] [nvarchar](100) NULL,
	[DiemKetThuc] [nvarchar](100) NULL,
	[KhoangCach] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VeXe]    Script Date: 23/04/2025 9:05:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeXe](
	[MaVe] [int] NOT NULL,
	[LoaiVe] [nvarchar](50) NULL,
	[GiaVe] [decimal](10, 2) NULL,
	[MaTuyen] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XeBus]    Script Date: 23/04/2025 9:05:00 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XeBus](
	[MaXeBus] [int] NOT NULL,
	[BienSo] [nvarchar](20) NULL,
	[SucChua] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaXeBus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DatVe] ([MaDatVe], [MaKhachHang], [MaVe], [NgayDatVe], [TrangThai], [MaNV], [GhiChu]) VALUES (1, 1, 1, CAST(N'2025-04-21T10:00:00.000' AS DateTime), N'Đã thanh toán', 1, NULL)
INSERT [dbo].[DatVe] ([MaDatVe], [MaKhachHang], [MaVe], [NgayDatVe], [TrangThai], [MaNV], [GhiChu]) VALUES (2, 2, 2, CAST(N'2025-04-22T15:30:00.000' AS DateTime), N'Chờ xác nhận', 2, NULL)
INSERT [dbo].[DatVe] ([MaDatVe], [MaKhachHang], [MaVe], [NgayDatVe], [TrangThai], [MaNV], [GhiChu]) VALUES (3, 3, 3, CAST(N'2025-04-23T08:45:00.000' AS DateTime), N'Đã hủy', 3, NULL)
INSERT [dbo].[DatVe] ([MaDatVe], [MaKhachHang], [MaVe], [NgayDatVe], [TrangThai], [MaNV], [GhiChu]) VALUES (4, 4, 6, CAST(N'2025-04-21T09:00:00.000' AS DateTime), N'Đã thanh toán', 4, NULL)
INSERT [dbo].[DatVe] ([MaDatVe], [MaKhachHang], [MaVe], [NgayDatVe], [TrangThai], [MaNV], [GhiChu]) VALUES (5, 5, 8, CAST(N'2025-04-21T11:00:00.000' AS DateTime), N'Chờ xác nhận', 5, NULL)
INSERT [dbo].[DatVe] ([MaDatVe], [MaKhachHang], [MaVe], [NgayDatVe], [TrangThai], [MaNV], [GhiChu]) VALUES (6, 6, 30, CAST(N'2025-04-22T07:15:00.000' AS DateTime), N'Đã thanh toán', 6, NULL)
INSERT [dbo].[DatVe] ([MaDatVe], [MaKhachHang], [MaVe], [NgayDatVe], [TrangThai], [MaNV], [GhiChu]) VALUES (7, 7, 1, CAST(N'2025-04-22T17:20:00.000' AS DateTime), N'Đã hủy', 7, NULL)
INSERT [dbo].[DatVe] ([MaDatVe], [MaKhachHang], [MaVe], [NgayDatVe], [TrangThai], [MaNV], [GhiChu]) VALUES (8, 8, 3, CAST(N'2025-04-23T14:00:00.000' AS DateTime), N'Đã thanh toán', 8, NULL)
INSERT [dbo].[DatVe] ([MaDatVe], [MaKhachHang], [MaVe], [NgayDatVe], [TrangThai], [MaNV], [GhiChu]) VALUES (9, 9, 10, CAST(N'2025-04-23T12:00:00.000' AS DateTime), N'Chờ xác nhận', 9, N'Yêu cầu giữ chỗ phía trước')
INSERT [dbo].[DatVe] ([MaDatVe], [MaKhachHang], [MaVe], [NgayDatVe], [TrangThai], [MaNV], [GhiChu]) VALUES (10, 10, 12, CAST(N'2025-04-24T08:00:00.000' AS DateTime), N'Đã hủy', 10, N'Khách hàng thay đổi lịch trình')
INSERT [dbo].[DatVe] ([MaDatVe], [MaKhachHang], [MaVe], [NgayDatVe], [TrangThai], [MaNV], [GhiChu]) VALUES (11, 11, 15, CAST(N'2025-04-25T15:00:00.000' AS DateTime), N'Đã thanh toán', 11, N'Cần hỗ trợ người già')
INSERT [dbo].[DatVe] ([MaDatVe], [MaKhachHang], [MaVe], [NgayDatVe], [TrangThai], [MaNV], [GhiChu]) VALUES (12, 12, 18, CAST(N'2025-04-23T10:30:00.000' AS DateTime), N'Chờ xác nhận', 12, N'Khách yêu cầu thanh toán sau')
INSERT [dbo].[DatVe] ([MaDatVe], [MaKhachHang], [MaVe], [NgayDatVe], [TrangThai], [MaNV], [GhiChu]) VALUES (13, 13, 21, CAST(N'2025-04-24T09:45:00.000' AS DateTime), N'Đã thanh toán', 13, N'Yêu cầu chỗ ngồi gần cửa sổ')
INSERT [dbo].[DatVe] ([MaDatVe], [MaKhachHang], [MaVe], [NgayDatVe], [TrangThai], [MaNV], [GhiChu]) VALUES (14, 14, 24, CAST(N'2025-04-25T14:15:00.000' AS DateTime), N'Đã hủy', 14, N'Hệ thống đặt nhầm vé')
INSERT [dbo].[DatVe] ([MaDatVe], [MaKhachHang], [MaVe], [NgayDatVe], [TrangThai], [MaNV], [GhiChu]) VALUES (15, 15, 27, CAST(N'2025-04-26T17:30:00.000' AS DateTime), N'Chờ xác nhận', 15, N'Khách yêu cầu liên lạc lại để xác nhận')
INSERT [dbo].[DatVe] ([MaDatVe], [MaKhachHang], [MaVe], [NgayDatVe], [TrangThai], [MaNV], [GhiChu]) VALUES (16, 16, 30, CAST(N'2025-04-23T13:00:00.000' AS DateTime), N'Đã thanh toán', 16, N'Không có ghi chú đặc biệt')
GO
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [SoDienThoai]) VALUES (1, N'Nguyễn Văn A', N'0123456789')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [SoDienThoai]) VALUES (2, N'Lê Thị B', N'0987654321')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [SoDienThoai]) VALUES (3, N'Trần Văn C', N'0912345678')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [SoDienThoai]) VALUES (4, N'Phạm Thị D', N'0901234567')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [SoDienThoai]) VALUES (5, N'Hoàng Văn E', N'0934567890')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [SoDienThoai]) VALUES (6, N'Đặng Thị F', N'0978123456')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [SoDienThoai]) VALUES (7, N'Ngô Văn G', N'0967001234')
INSERT [dbo].[KhachHang] ([MaKhachHang], [HoTen], [SoDienThoai]) VALUES (8, N'Tạ Thị H', N'0945678123')
GO
INSERT [dbo].[LichTrinhXeBus] ([MaLichTrinh], [MaXeBus], [MaTuyen], [MaNV], [ThoiGianXuatPhat]) VALUES (1, 1, 1, 1, CAST(N'06:30:00' AS Time))
INSERT [dbo].[LichTrinhXeBus] ([MaLichTrinh], [MaXeBus], [MaTuyen], [MaNV], [ThoiGianXuatPhat]) VALUES (2, 2, 2, 2, CAST(N'07:30:00' AS Time))
INSERT [dbo].[LichTrinhXeBus] ([MaLichTrinh], [MaXeBus], [MaTuyen], [MaNV], [ThoiGianXuatPhat]) VALUES (3, 3, 3, 3, CAST(N'08:00:00' AS Time))
INSERT [dbo].[LichTrinhXeBus] ([MaLichTrinh], [MaXeBus], [MaTuyen], [MaNV], [ThoiGianXuatPhat]) VALUES (4, 4, 6, 4, CAST(N'09:00:00' AS Time))
INSERT [dbo].[LichTrinhXeBus] ([MaLichTrinh], [MaXeBus], [MaTuyen], [MaNV], [ThoiGianXuatPhat]) VALUES (5, 5, 8, 5, CAST(N'10:30:00' AS Time))
INSERT [dbo].[LichTrinhXeBus] ([MaLichTrinh], [MaXeBus], [MaTuyen], [MaNV], [ThoiGianXuatPhat]) VALUES (6, 6, 30, 6, CAST(N'12:00:00' AS Time))
INSERT [dbo].[LichTrinhXeBus] ([MaLichTrinh], [MaXeBus], [MaTuyen], [MaNV], [ThoiGianXuatPhat]) VALUES (7, 7, 1, 7, CAST(N'14:00:00' AS Time))
INSERT [dbo].[LichTrinhXeBus] ([MaLichTrinh], [MaXeBus], [MaTuyen], [MaNV], [ThoiGianXuatPhat]) VALUES (8, 2, 2, 1, CAST(N'15:30:00' AS Time))
INSERT [dbo].[LichTrinhXeBus] ([MaLichTrinh], [MaXeBus], [MaTuyen], [MaNV], [ThoiGianXuatPhat]) VALUES (9, 3, 3, 3, CAST(N'17:00:00' AS Time))
INSERT [dbo].[LichTrinhXeBus] ([MaLichTrinh], [MaXeBus], [MaTuyen], [MaNV], [ThoiGianXuatPhat]) VALUES (10, 4, 6, 4, CAST(N'18:30:00' AS Time))
GO
INSERT [dbo].[NhanVienBanVe] ([MaNV], [TenNV], [SoDienThoai]) VALUES (1, N'Nguyễn Văn An', N'0912345678')
INSERT [dbo].[NhanVienBanVe] ([MaNV], [TenNV], [SoDienThoai]) VALUES (2, N'Lê Văn Bình', N'0923456789')
INSERT [dbo].[NhanVienBanVe] ([MaNV], [TenNV], [SoDienThoai]) VALUES (3, N'Trần Thị Cúc', N'0934567890')
INSERT [dbo].[NhanVienBanVe] ([MaNV], [TenNV], [SoDienThoai]) VALUES (4, N'Phạm Thị Dung', N'0945678901')
INSERT [dbo].[NhanVienBanVe] ([MaNV], [TenNV], [SoDienThoai]) VALUES (5, N'Hoàng Văn Em', N'0956789012')
INSERT [dbo].[NhanVienBanVe] ([MaNV], [TenNV], [SoDienThoai]) VALUES (6, N'Tạ Văn Phúc', N'0967890123')
INSERT [dbo].[NhanVienBanVe] ([MaNV], [TenNV], [SoDienThoai]) VALUES (7, N'Đỗ Thị Hoa', N'0978901234')
INSERT [dbo].[NhanVienBanVe] ([MaNV], [TenNV], [SoDienThoai]) VALUES (8, N'Ngô Thị Kỳ', N'0989012345')
GO
INSERT [dbo].[TuyenXeBus] ([MaTuyen], [TenTuyen], [DiemBatDau], [DiemKetThuc], [KhoangCach]) VALUES (1, N'Tuyến 01: Tân Long', N'Tân Long', N'Phố Nỷ', 75)
INSERT [dbo].[TuyenXeBus] ([MaTuyen], [TenTuyen], [DiemBatDau], [DiemKetThuc], [KhoangCach]) VALUES (2, N'Tuyến 02: Gang Thép', N'Gang Thép', N'Yên Lãng', 45.2)
INSERT [dbo].[TuyenXeBus] ([MaTuyen], [TenTuyen], [DiemBatDau], [DiemKetThuc], [KhoangCach]) VALUES (3, N'Tuyến 03: Thái Nguyên', N'Thái Nguyên', N'Quân Chu', 92.8)
INSERT [dbo].[TuyenXeBus] ([MaTuyen], [TenTuyen], [DiemBatDau], [DiemKetThuc], [KhoangCach]) VALUES (6, N'Tuyến 06: Thái Nguyên', N'Thái Nguyên', N'Định Hóa', 110.3)
INSERT [dbo].[TuyenXeBus] ([MaTuyen], [TenTuyen], [DiemBatDau], [DiemKetThuc], [KhoangCach]) VALUES (8, N'Tuyến 08: Bình Long', N'Bình Long', N'Bến xe Thái Nguyên', 25.7)
INSERT [dbo].[TuyenXeBus] ([MaTuyen], [TenTuyen], [DiemBatDau], [DiemKetThuc], [KhoangCach]) VALUES (30, N'Tuyến 30: 915 Gia Sàng', N'915 Gia Sàng', N'ATK Định Hóa', 120)
GO
INSERT [dbo].[VeXe] ([MaVe], [LoaiVe], [GiaVe], [MaTuyen]) VALUES (1, N'Ve lượt', CAST(30000.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[VeXe] ([MaVe], [LoaiVe], [GiaVe], [MaTuyen]) VALUES (2, N'Ve lượt', CAST(25000.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[VeXe] ([MaVe], [LoaiVe], [GiaVe], [MaTuyen]) VALUES (3, N'Ve lượt', CAST(35000.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[VeXe] ([MaVe], [LoaiVe], [GiaVe], [MaTuyen]) VALUES (6, N'Ve lượt', CAST(40000.00 AS Decimal(10, 2)), 6)
INSERT [dbo].[VeXe] ([MaVe], [LoaiVe], [GiaVe], [MaTuyen]) VALUES (8, N'Ve lượt', CAST(20000.00 AS Decimal(10, 2)), 8)
INSERT [dbo].[VeXe] ([MaVe], [LoaiVe], [GiaVe], [MaTuyen]) VALUES (30, N'Ve thang', CAST(300000.00 AS Decimal(10, 2)), 30)
GO
INSERT [dbo].[XeBus] ([MaXeBus], [BienSo], [SucChua]) VALUES (1, N'22A-12345', 45)
INSERT [dbo].[XeBus] ([MaXeBus], [BienSo], [SucChua]) VALUES (2, N'20B-67890', 50)
INSERT [dbo].[XeBus] ([MaXeBus], [BienSo], [SucChua]) VALUES (3, N'20C-54321', 40)
INSERT [dbo].[XeBus] ([MaXeBus], [BienSo], [SucChua]) VALUES (4, N'20D-45678', 55)
INSERT [dbo].[XeBus] ([MaXeBus], [BienSo], [SucChua]) VALUES (5, N'20E-98765', 48)
INSERT [dbo].[XeBus] ([MaXeBus], [BienSo], [SucChua]) VALUES (6, N'20F-11111', 42)
INSERT [dbo].[XeBus] ([MaXeBus], [BienSo], [SucChua]) VALUES (7, N'20G-22222', 40)
GO
ALTER TABLE [dbo].[DatVe]  WITH NOCHECK ADD FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[DatVe]  WITH NOCHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVienBanVe] ([MaNV])
GO
ALTER TABLE [dbo].[DatVe]  WITH NOCHECK ADD FOREIGN KEY([MaVe])
REFERENCES [dbo].[VeXe] ([MaVe])
GO
ALTER TABLE [dbo].[LichTrinhXeBus]  WITH CHECK ADD FOREIGN KEY([MaTuyen])
REFERENCES [dbo].[TuyenXeBus] ([MaTuyen])
GO
ALTER TABLE [dbo].[LichTrinhXeBus]  WITH CHECK ADD FOREIGN KEY([MaXeBus])
REFERENCES [dbo].[XeBus] ([MaXeBus])
GO
ALTER TABLE [dbo].[LichTrinhXeBus]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVienBanVe] ([MaNV])
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD FOREIGN KEY([MaTuyen])
REFERENCES [dbo].[TuyenXeBus] ([MaTuyen])
GO
/****** Object:  Trigger [dbo].[trg_CheckGhiChu]    Script Date: 23/04/2025 9:05:01 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_CheckGhiChu]
ON [dbo].[DatVe]
AFTER INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted
        WHERE GhiChu LIKE '%khẩn cấp%'
    )
    BEGIN
        PRINT 'Đơn đặt vé có yêu cầu khẩn cấp! Hãy xử lý nhanh.';
        -- You can replace the PRINT statement with additional logic or notifications if needed.
    END;
END;
GO
ALTER TABLE [dbo].[DatVe] ENABLE TRIGGER [trg_CheckGhiChu]
GO
USE [master]
GO
ALTER DATABASE [VEXEBUS] SET  READ_WRITE 
GO
