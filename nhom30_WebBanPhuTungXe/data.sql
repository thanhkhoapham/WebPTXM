USE [www30]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 5/26/2021 8:25:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[hoaDon_id] [int] NOT NULL,
	[sanPham_id] [int] NOT NULL,
	[donGia] [float] NULL,
	[soLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[hoaDon_id] ASC,
	[sanPham_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/26/2021 8:25:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHd] [int] IDENTITY(1,1) NOT NULL,
	[maKh] [int] NULL,
	[ngayLapHoaDon] [datetime] NULL,
	[noiNhanHang] [varchar](255) NULL,
	[Kh_maHd] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maHd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSp]    Script Date: 5/26/2021 8:25:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSp](
	[maLoaiSp] [int] IDENTITY(1,1) NOT NULL,
	[tenLoaiSp] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLoaiSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/26/2021 8:25:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[maKh] [int] IDENTITY(1,1) NOT NULL,
	[diaChi] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[enabel] [int] NULL,
	[gioiTinh] [varchar](255) NULL,
	[hoTenKh] [varchar](255) NULL,
	[matKhau] [varchar](255) NULL,
	[ngaySinh] [varchar](255) NULL,
	[role] [varchar](255) NULL,
	[soDienThoai] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maKh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 5/26/2021 8:25:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSp] [int] IDENTITY(1,1) NOT NULL,
	[giaGoc] [float] NULL,
	[hinhAnh] [image] NULL,
	[maLoaiSp] [int] NULL,
	[moTa] [varchar](255) NULL,
	[tenSp] [varchar](255) NULL,
	[thuongHieu] [varchar](255) NULL,
	[xuatXu] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maSp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoaiSp] ON 

INSERT [dbo].[LoaiSp] ([maLoaiSp], [tenLoaiSp]) VALUES (1, N'Ao')
SET IDENTITY_INSERT [dbo].[LoaiSp] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([maKh], [diaChi], [email], [enabel], [gioiTinh], [hoTenKh], [matKhau], [ngaySinh], [role], [soDienThoai]) VALUES (243, N'Hoang hoa tham', N'phamtuankhai@gmail.com', 1, N'nu', N'tuan pham khoa', N'$2a$10$mR4dg1MEdRmFon/xsM1.2eLByilgLbsLEivTOwbtVebiTciBDI6Uy', N'11/08/1999', N'ADMIN', N'016685995')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([maSp], [giaGoc], [hinhAnh], [maLoaiSp], [moTa], [tenSp], [thuongHieu], [xuatXu]) VALUES (1, 111, NULL, 1, N'khong co mo ta', N'Toan', N'ahihihi ahih', N'trung quoc')
INSERT [dbo].[SanPham] ([maSp], [giaGoc], [hinhAnh], [maLoaiSp], [moTa], [tenSp], [thuongHieu], [xuatXu]) VALUES (2, 222, NULL, 1, N'qwe', N'aaaa', N'asdasd', N'asdasd')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK5f7ed19s80atr1encqmig01tf] FOREIGN KEY([sanPham_id])
REFERENCES [dbo].[SanPham] ([maSp])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK5f7ed19s80atr1encqmig01tf]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FKi00gl36ofic4vegtusekrt2qs] FOREIGN KEY([hoaDon_id])
REFERENCES [dbo].[HoaDon] ([maHd])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FKi00gl36ofic4vegtusekrt2qs]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FKi3p1inngl3i8kimyooa0gqaik] FOREIGN KEY([Kh_maHd])
REFERENCES [dbo].[NguoiDung] ([maKh])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FKi3p1inngl3i8kimyooa0gqaik]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FKdwye7mw9jamm441xhmmnk70ea] FOREIGN KEY([maLoaiSp])
REFERENCES [dbo].[LoaiSp] ([maLoaiSp])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FKdwye7mw9jamm441xhmmnk70ea]
GO
