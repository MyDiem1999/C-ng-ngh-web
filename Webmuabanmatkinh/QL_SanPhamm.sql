USE [QLSanPham]
GO
/****** Object:  Table [dbo].[tbl_ChiTietHD]    Script Date: 11/26/2019 4:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTietHD](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [nvarchar](50) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_tbl_ChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HoaDon]    Script Date: 11/26/2019 4:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[NgayTao] [datetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_tbl_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KhachHang]    Script Date: 11/26/2019 4:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](max) NULL,
	[SoDienThoai] [nvarchar](15) NULL,
	[GioiTinh] [nvarchar](3) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[MatKhau] [nvarchar](10) NULL,
 CONSTRAINT [PK_tbl_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Loai]    Script Date: 11/26/2019 4:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Loai](
	[MaLoai] [nvarchar](50) NOT NULL,
	[TenLoai] [nvarchar](max) NULL,
	[Nhom] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_Loai] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NhaSanXuat]    Script Date: 11/26/2019 4:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Nhom]    Script Date: 11/26/2019 4:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Nhom](
	[MaNhom] [nvarchar](50) NOT NULL,
	[TenNhom] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_Nhom] PRIMARY KEY CLUSTERED 
(
	[MaNhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SanPham]    Script Date: 11/26/2019 4:23:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SanPham](
	[MaSanPham] [nvarchar](50) NOT NULL,
	[TenSP] [nvarchar](max) NULL,
	[MaL] [nvarchar](50) NULL,
	[MaSX] [int] NULL,
	[Gia] [float] NULL,
	[GhiChu] [nvarchar](max) NULL,
	[Hinh] [nvarchar](max) NULL,
	[MauSac] [nchar](10) NULL,
	[MoTa] [nvarchar](max) NULL,
 CONSTRAINT [PK_tbl_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_HoaDon] ON 

INSERT [dbo].[tbl_HoaDon] ([MaHoaDon], [NgayTao], [MaKH]) VALUES (1, CAST(N'2016-12-12T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[tbl_HoaDon] ([MaHoaDon], [NgayTao], [MaKH]) VALUES (2, CAST(N'2017-01-01T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[tbl_HoaDon] ([MaHoaDon], [NgayTao], [MaKH]) VALUES (3, CAST(N'2016-02-02T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[tbl_HoaDon] ([MaHoaDon], [NgayTao], [MaKH]) VALUES (4, CAST(N'2019-04-02T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[tbl_HoaDon] ([MaHoaDon], [NgayTao], [MaKH]) VALUES (5, CAST(N'2019-06-10T00:00:00.000' AS DateTime), 5)
SET IDENTITY_INSERT [dbo].[tbl_HoaDon] OFF
SET IDENTITY_INSERT [dbo].[tbl_KhachHang] ON 

INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [GioiTinh], [DiaChi], [MatKhau]) VALUES (1, N'Admin', N'Admin', N'Nữ', N'222/16/2 Lý Thái Tổ, Phường 01, Quận 3, Thành phố Hồ Chí Minh
', N'Admin123')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [GioiTinh], [DiaChi], [MatKhau]) VALUES (2, N'NV1', N'NV1', N'Nam', N'602/9 Trường Chinh, Phường Tân Hưng Thuận, Quận 12, Thành phố Hồ Chí Minh', N'NV123')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [GioiTinh], [DiaChi], [MatKhau]) VALUES (3, N'NV2', N'NV2', N'Nam', N'416 Nguyễn Duy Trinh, Phường Bình Trưng Đông, Quận 2, Thành phố Hồ Chí Minh', N'NV123')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [GioiTinh], [DiaChi], [MatKhau]) VALUES (4, N'Lê Thuận An', N'0903118811', N'Nam', N'36/14B Đường số 18, Phường 8, Quận Gò Vấp, Thành phố Hồ Chí Minh', N'An567')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [GioiTinh], [DiaChi], [MatKhau]) VALUES (5, N'Nguyễn Trần Kim Anh', N'0989888889', N'Nữ', N'6 Đường số 2, KĐT Vạn Phúc, Phường Hiệp Bình Phước, Quận Thủ Đức, TP Hồ Chí Minh', N'Anhanh')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [GioiTinh], [DiaChi], [MatKhau]) VALUES (6, N'Trần Ngọc Khánh An', N'0903118865', N'Nữ', N'755 Lũy Bán Bích, Phường Phú Thọ Hoà, Quận Tân phú, TP Hồ Chí Minh', N'KhanhAn123')
INSERT [dbo].[tbl_KhachHang] ([MaKhachHang], [TenKhachHang], [SoDienThoai], [GioiTinh], [DiaChi], [MatKhau]) VALUES (7, N'phan duc tai', N'0793479084', N'Nam', N'123', N'be123')
SET IDENTITY_INSERT [dbo].[tbl_KhachHang] OFF
INSERT [dbo].[tbl_Loai] ([MaLoai], [TenLoai], [Nhom]) VALUES (N'ML001', N'Kính cận nữ', N'NH001')
INSERT [dbo].[tbl_Loai] ([MaLoai], [TenLoai], [Nhom]) VALUES (N'ML002', N'Kính cận nam', N'NH001')
INSERT [dbo].[tbl_Loai] ([MaLoai], [TenLoai], [Nhom]) VALUES (N'ML003', N'Kính mát nam', N'NH002')
INSERT [dbo].[tbl_Loai] ([MaLoai], [TenLoai], [Nhom]) VALUES (N'ML004', N'Kính mát nữ', N'NH002')
INSERT [dbo].[tbl_Loai] ([MaLoai], [TenLoai], [Nhom]) VALUES (N'ML005', N'Kính lão nam', N'NH003')
INSERT [dbo].[tbl_Loai] ([MaLoai], [TenLoai], [Nhom]) VALUES (N'ML006', N'Kính lão nữ', N'NH003')
INSERT [dbo].[tbl_Loai] ([MaLoai], [TenLoai], [Nhom]) VALUES (N'ML007', N'Kính mát unisex', N'NH002')
INSERT [dbo].[tbl_Loai] ([MaLoai], [TenLoai], [Nhom]) VALUES (N'ML008', N'Kính cận unisex', N'NH001')
SET IDENTITY_INSERT [dbo].[tbl_NhaSanXuat] ON 

INSERT [dbo].[tbl_NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (1, N'Nhật Bản')
INSERT [dbo].[tbl_NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (2, N'Hàn Quốc')
INSERT [dbo].[tbl_NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (3, N'Mỹ')
INSERT [dbo].[tbl_NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (4, N'Pháp')
INSERT [dbo].[tbl_NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (5, N'Đức')
INSERT [dbo].[tbl_NhaSanXuat] ([MaNSX], [TenNSX]) VALUES (6, N'Ý')
SET IDENTITY_INSERT [dbo].[tbl_NhaSanXuat] OFF
INSERT [dbo].[tbl_Nhom] ([MaNhom], [TenNhom]) VALUES (N'NH001', N'Kính cận')
INSERT [dbo].[tbl_Nhom] ([MaNhom], [TenNhom]) VALUES (N'NH002', N'Kính râm')
INSERT [dbo].[tbl_Nhom] ([MaNhom], [TenNhom]) VALUES (N'NH003', N'Kính lão')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP001', N'Kính mát nữ Velocity', N'ML004', 3, 480000, N'Sau khi sử dụng nên bảo quản kính trong hộp kính;
Thường xuyên rửa kính bằng nước máy, không sử dụng các nước lau rửa kính có tính tẩy rửa mạnh, lau sạch tròng kính bằng khăn chuyên dùng để lau kính;
Không đặt úp tròng kính xuống các bề mặt để tránh trầy xước hoặc bị vỡ nứt;
Hạn chế va chạm mạnh vào kính;
Khi đeo và tháo kính nên sử dụng 2 tay cân bằng kéo và nâng kính;
Thường xuyên kiểm tra và vặn chặt ốc vít giữ tròng kính ở gọng.', N'h1.jpg', N'Đỏ mận    ', N'Kích thước: Độ rộng tròng 58mm – Số đo cầu kính 16mm – Số đo càng kính 129mm;
Thiết kế gọng kính vuông bo sát khuôn mặt, cùng với phối màu đồi mồi thời thượng vừa tạo điểm nhấn cho kính vừa giúp cho phái đẹp tôn lên được vẻ sang trọng, sành điệu cho gương mặt người đeo;
Tròng kính được cấu tạo từ chất liệu polycarbonate với công thức chống tia cực tím và bảo vệ mắt một cách tối ưu;
Gọng kính được cấu thành từ chất liệu plastic và titanium bền chắc, bảo vệ gọng kính chống biến dạng và các vết trầy xước;
Thiết kế gọng kính sang trọng, trẻ trung;
Gia công sản phẩm chi tiết, chất lượng.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP002', N'Kính mát Unisex Rayban', N'ML007', 6, 3217500, NULL, N'h2.jpg', N'Xanh rêu  ', N'Kiểu dáng kính phi công sành điệu không chỉ phù hợp cho đấng mày râu mạnh mẽ mà còn giúp thể hiện cá tính khỏe khoắn, năng động của phái nữ;
Với màu sắc xanh rêu trẻ trung, sản phẩm này giúp tạo điểm nhấn nổi bật cùng phong cách thời trang cá tính cho chính chủ;
Gọng kính được thiết kế bởi chất liệu Titanium cao cấp cùng với tròng kính được cấu tạo bởi polycarbonate vừa tạo nên một sản phẩm có chất lượng cao cấp, bền bỉ vừa phát huy tối ưu công dụng của chiếc kính mát. Đó là ngăn cản tối đa tác hại của ánh nắng mặt trời đối với mắt, đồng thời hạn chế các tác nhân bên ngoài gây hại cho đôi mắt của bạn;
Thiết kế sản phẩm phù hợp với nhiều gương mặt đặc biệt rất thoải mái khi đeo;
Sản phẩm được gia công tỉ mỉ đến từng chi tiết vừa đảm bảo được chất lượng vừa đảm bảo luôn cả tính thẩm mỹ của sản phẩm;
Đệm mũi mềm mại không gây vết hằn trên mũi khi sử dụng sản phẩm.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP003', N'Kính mát phân cực Unisex Veithdia gọng hợp kim Magie', N'ML007', 4, 279000, NULL, N'h3.jpg', N'Đen bóng  ', N'Sản phẩm có thiết kế theo kiểu dáng kính quân đội Mỹ cá tính, thể hiện được phong cách mạnh mẽ của người sử dụng;
Tròng kính gia công theo thiết kế bộ lọc loại 3 và lớp quang học loại 1, đồng thời theme các ống kính phân cực đạt hiệu quả cao trong việc hạn chế hiện tượng ánh sáng phân cực phản xạ lại vào mắt, gây chói hoặc hạn chế tầm nhìn của người đeo;
Magie được biết tới là kim loại bền chắc mà khối lượng nhẹ. Nắm được nguyên lý này, các nhà thiết kế đã sử dụng hợp kim magie làm chất liệu cấu thành gọng kính của sản phẩm. Vừa đảm bảo độ bền của kính vừa giúp giảm trọng lượng và không gây áp lực lên gương mặt người sử dụng do kính quá nặng.
Ngoài ra, nhờ chất liệu magie mà sản phẩm có khả năng chịu được tác dụng của ngoại lực bền bỉ và tốt hơn so với các chất liệu truyền thống khác;
Chất liệu cấu tạo kính an toàn, không độc hại hoặc gây kích ứng luôn an toàn cho người sử dụng;
Khớp nối chắc chắn và đàn hồi, người sử dụng có thể tùy chỉnh chiều rộng của gọng kính sao cho phù hợp với khuôn mặt và thoải mái nhất khi đeo;
Kính mát có chỉ số UV400 giúp bảo vệ mắt khỏi tia cực tím một cách tuyệt đối và được ECC của EU và Mỹ công nhận về chất lượng;
Đệm kính được làm từ plastic tạo cảm giác êm ái cho mũi khi đeo kính;
Sản phẩm phù hợp sử dụng cho các hoạt động ngoài trời đặc biệt trong môi trường ánh sáng mặt trời gay gắt.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP004', N'Kính mát nữ USA Star Foster TAR', N'ML004', 2, 550000, NULL, N'h4.jpg', N'Xanh đen  ', N'Kích thước sản phẩm: Dài 14.6 x Rộng 6.5 x Cao 3.5 cm;
Sản phẩm được thiết kế theo tiêu chuẩn UV400 theo công nghệ của FDA (Mỹ) và của EY có khả năng ngăn chặn tia UV lên đến tỷ lệ 100%;
Gọng kính cấu tạo từ thép không gỉ với trọng lượng nhẹ hơn rất nhiều so với các dòng mắt kính cùng loại;
Gọng kính chắc chắn, tạo sự thoải mái khi đeo và phù hợp với nhiều gương mặt của nữ;
Tròng kính thiết kế theo kiểu dáng tương tự mắt mèo cùng với màu xám khói sang trọng tạo sử nổi bật cho gương mặt phái đẹp khi sử dụng;
Gia công sản phẩm tỉ mỉ và chất lượng.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP005', N'Kính mát nữ Exfash', N'ML004', 2, 656000, NULL, N'h5.jpg', N'Da beo    ', N'Kích thước của sản phẩm: Dài x Cao x Rộng: 16.5 x 7 x 3.5 cm;
Gọng kính làm bằng chất liệu titanium chắc chắn, bền, nhẹ và bền bỉ theo thời gian. Đồng thời với tông màu đồi mồi là tông mà có thể dễ dàng đi với tất cả các màu da và tóc mà không tạo ra sự đối lập màu sắc trên tổng thể gương mặt;
Phom kính tròn nhẹ tôn lên đường nét của hầu như mọi dáng mặt, bao gồm cả vuông và tròn;
Tròng kính cấu tạo từ polycarbonate chống tia tử ngoại cùng với màu trà sành điệu có thể phối với bất cứ phong cách thời trang nào từ dã ngoại cho tới du lịch;
Đệm mũi êm ái, tạo cảm giác dễ chịu khi đeo;
Càng kính mảnh và chắc chắn.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP006', N'Kính mát nữ CG USA WF14C', N'ML004', 3, 369000, NULL, N'h6.jpg', N'Nâu đốm   ', N'Thông số kính: 141 – 16 – 145;
Sản phẩm có khả năng ngăn chặn lên tới 100% tia UV theo tiêu chuẩn của USA và EU;
Tròng kính màu trà thu hút người nhìn đồng thời tạo tầm nhìn rõ cho người dùng;
Thiết kế kính nửa gọng mang lại cho người đeo cái nhìn rất bụi bặm pha chút tinh nghịch. Với thiết kế chủ yếu nhấn vào phần gọng bao quanh nửa mắt kính, những chiếc kính này thường phù hợp với những bạn thích phong cách rock-chic hoặc punk nổi loạn. Ngoài ra, gọng kính có màu sắc đồi mồi sáng cùng với bản to tạo điểm nhấn nổi bật;
Chất liệu sản phẩm đảm bảo an toàn cho người sử dụng;
Thiết kế gọng cứng cáp và chắc chắn, tạo sự thoải mái, khi đeo; không gây vết hằn khó chịu hay dị ứng da.
Màu sắc trung tính, theo xu hướng dễ phối hợp với nhiều loại trang phục.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP007', N'Kính Mát Nữ Perci', N'ML004', 2, 319000, NULL, N'h7.jpg', N'Đỏ tím    ', N'Kích thước: Độ rộng tròng: 65, Số đo cầu kính: 13, Chiều dài càng kính: 152;
Thiết kế kính mắt mèo tạo nét thu hút và nổi bật, phù hợp với dáng nhiều gương mặt;
Gọng kính được làm bằng hợp kim cao cấp, chắc chắn và chống gỉ;
Tròng kính được thiết kế đa chức năng vừa giúp chống tia UV tuyệt đối, vừa chống trầy. Đặc biệt có thể chống nước khi sử dụng trong trời mưa;
Sản phẩm thể hiện sự đẳng cấp và phong cách thời trang của riêng bạn.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP008', N'Kính Mát Unisex Carrera', N'ML007', 6, 2559000, NULL, N'h8.jpg', N'Đỏ đen    ', N'Kích thước sản phẩm: Mắt kính 62mm x Cầu kính 10mm x Càng kính 130mm;
Sản phẩm được thiết kế với kiểu dáng gọng vuông đầy mạnh mẽ, hai bên càng kính là tên thương hiệu Carrera phối với sắc đỏ mang lại cảm giác thời trang sang trọng và cuốn hút;
Tròng kính màu khói được làm từ chất liệu cao cấp vừa chống tia cực tím, vừa có thể chống được trầy xướt nếu có va đập;
Với góc cạnh vuông của mình sản phẩm luôn phù hợp với nhiều gương mặt khác nhau, bo sát vừa vặn;
Sự kết hợp giữa sắc đỏ của gọng cùng sắc xám của tròng tạo nên một tổng thế hài hòa và sang trọng cho người đeo;
Sản phẩm chính hãng nhập khẩu từ Ý, có tem chống giả của Bộ Công an;
Sản phẩm được gia công kĩ lưỡng và chắc chắn.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP009', N'Kính cận nam R139', N'ML002', 1, 429000, N' Cấu trúc gọng kính phù
hợp mọi khuôn mặt, gọng kính sang trọng, lịch lãm.

- Kính vừa giúp bạn
tránh khỏi bụi bẩn, khói xe khi ra đường vừa rất thời trang và sành điệu không
độc hại, không gây dị ứng phù hợp cho bạn.', N'h9.jpg', N'Trắng nâu ', N'Gọng kính phong cách thời trang hiện đại, độc đáo, đường nét tinh xảo, tỉ mỉ từ những chi tiết nhỏ nhất, gópphần nâng tầm đẳng cấp cho bạn.Khung kính phối hợp kim titannium tạo độ bền cao và chồng gỉ, trầy xước.Gọng kính được làm từ nhựa cao cấp, có độ đàn hồi cao và rất êm khi đeo kính thường xuyên mà không mõi.Sản phẩm gồm: 1 Gọng kính - 1 khăn lau mềm - 1 hộp đựng bảo vệ kính - 1 dụng cụ chỉnh kính cao cấp.Đảm Bảo Hàng Giống Như Hình 100% ')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP010', N'Kính cận nhựa dẻo GD2671', N'ML002', 1, 400000, N'Dễ bảo quản, lau chùi mắt kính khi bị mờ bằng khăn lau kính chuyên dụng và  để kính vào trong hộp đựng kính khi sử dụng xong để bảo vệ mắt kính được tốt nhất.', N'h10.jpg', N'Đen       ', N'Kích thước: Dài 14,5cm , Cao 4,7cm.. Kiểu dáng: Oval. Gọng kính nhựa dẻo với thiết kế tinh tế, chất nhựa siêu dẻo có khả năng bẻ gập tuyệt đối. Chắn chắn sẽ là lưạ chọn tuyệt vời dành cho những bạn hay làm gãy gọng nhé. Mẫu gọng kính tạo cho người đeo sự thoải mái như đi chơi, đi học, đi làm hay đi du lịch cùng gia đình và bạn bè chắc chắn sẽ là một ý tưởng tuyệt vời')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP011', N'Kính Mắt Mèo Kim Loại GKL029', N'ML001', 5, 399000, N'Dễ bảo quản, lau chùi mắt kính khi bị mờ bằng khăn lau kính chuyên dụng và  để kính vào trong hộp đựng kính khi sử dụng xong để bảo vệ mắt kính được tốt nhất.', N'h11.jpg', N'Đen đỏ    ', N'Chất liệu: Thép không rỉ.

Kích thước: Dài 14cm , Cao 4,7cm. Gọng kính vintage kim loại với thiết kế thanh mảnh tạo cho người đeo sự thoải mái nhất nhờ trọng lượng siêu nhẹ.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP012', N'Kính Cận Thời Trang  Nam Nữ 772', N'ML008', 5, 239000, NULL, N'h12.JPG', N'Trắng     ', N'Chất liệu: Nhựa Dẻo – Kim Loại – Nhựa Cứng 
Phụ kiện đi kèm: 1 hộp nhựa + Khăn lau
Màu sản phẩm: Đa dạng tùy theo từng sản phẩm khác nhau 
Kích thước sản phẩm:  Trung bình ( Đây là kích thước phổ thông, nên hầu như mọi người đều vừa).')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP013', N'Kính Unisex Wayfarer Semi-Rimless Viền Nhám', N'ML008', 6, 2069000, N'
Bảo quản: Lau bằng vải mềm', N'h13.jpg', N'Đen nhám  ', N'Kính được làm từ chất liệu cao cấp trên dây chuyền sản xuất tiên tiến, mang lại sản phẩm tinh tế, gọn nhẹ & hợp thời trang.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP014', N'Kính cận nam binchi nhôm', N'ML002', 6, 580000, NULL, N'h14.jpg', N'Đen xanh  ', N'Sản phẩm thuộc dòng kính thuộc dòng kính mắt hàng hiệu có khả năng chống ăn mòn và rỉ sét,và không bị oxy hóa.

Kính cận nam Binchi nhôm là dòng kính cận thể thao, trẻ trung, hợp với màu da ngâm ngâm, phù hợp với số độ cận dưới 8 độ. Kính mắt nam này có 2 ve chống mũi, tạo hình mẫu phong cách cá tính, sức mạnh của người dùng kính luôn được thể hiện. Với chiếc kính thể thao giúp bạn mạnh mẽ hơn ngay cả khi bạn ngồi làm việc trước máy tính. Gọng kính cận siêu nhẹ không bị oxy hóa là thông điệp chính của khung kính. Gọng kính cận nam này được làm từ chất liệu cao cấp, cực bền, nhẹ tạo cho bạn cảm giác dễ chịu và thoải mái khi đeo kính.

Mắt kính nam có khả năng chống tia cực tím, bảo vệ mắt tránh bị các yếu tố bên ngoài tác động vào.

Binchi nhôm là dòng kính cận thể thao, trẻ trung, hợp với màu da ngâm ngâm, phù hợp với số độ cận dưới 8 độ.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP015', N'Kính cận nam RS985', N'ML002', 4, 980000, NULL, N'h15.jpg', N'Vàng nhạt ', N'dòng sản phẩm kết hợp giữa kim loại hiếm cao cấp. Hai bên càng của gọng kính màu vàng nhạt. Gọng kính cận cũng được thiết kế tinh tế, tỉ mỉ dễ đeo. Tạo cho bạn cảm giác thích thú.. Gọng cước giúp bạn trẻ trung, năng động lịch sự.

Kính mát có độ này rất  phù hợp cho nam giới từ 33-59 tuổi. Chi tiết phù hợp cho người đeo kính cận, độ từ cao tới thấp. Thuộc loại gọng kính cận xịn nên khi sử dụng bạn sẽ cảm thấy thoải mái.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP016', N'Kính cận Titan RICOH83
', N'ML002', 2, 1500000, NULL, N'h16.jpg', N'Bạc       ', N'Vật liệu Titan có khả năng chống ăn mòn và rỉ sét cao. Bên cạnh đó, nó còn có khả năng chống thấm cao ví như Axit. Đặc biệt là Titan có khả năng ăn mòn ngang bằng với Platinum.

Kính cận nam với sự thiết kế tinh xảo rất ấn tượng và độc đáo tạo cho người dùng cảm giác thoải mái khi đeo. Đồng thời góp phần thêm cho bạn một kiểu cách sang trọng, lịch lãm. Với sự tiện dụng đi kèm của hộp kính nhỏ gọn chúng ta có thể bỏ túi mà không làm vướng bạn một chút nào.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP017', N'Kính Cận Titan Full Viền PD650 – P9837', N'ML002', 3, 445000, N'Hỗ trợ bảo hành bảo dưỡng lau chùi kính và gọng kính, thay ve kính miễn phí trọn đời sản phẩm', N'h17.jpg', N'Xanh      ', N'Mẫu kính cận Titanium full viền mảnh, mạ màu xanh sang trọng.
Thiết kế viền và càng kính là titan mảnh và nhẹ, ve rời có đệm cao su nâng mũi.
Đeo ôm, không gây khó chịu cho khuôn mặt.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP018', N' kính cận Hàn Quốc Velocity VL26721-C04-52-19-140', N'ML008', 2, 520000, N'tặng kèm hộp và khăn lau.

 Nên dùng cả hai tay khi đeo và gỡ kính. Hạn chế tay cầm vào tròng kính. Thường xuyên vệ sinh và lau chùi kính bằng nước rửa kính. Không dùng vạt áo, khăn tắm, giấy vệ sinh… để lau. Hạn chế thói quen cài kính trên đầu, cài vào áo sẽ dễ làm rơi kính xuống đất.', N'h18.jpg', N'Đen bạc   ', N'Size kính: 52-19-140. sự kết hợp giữa nhựa dẻo và hợp kim thanh mảnh cực bền.Ốc vít chắc chắn, giữ form kính tốt hơn.Đệm mũi  có thể tuỳ chỉnh phù hợp theo từng sóng mũi.Kính được thiết kế theo form tròn thanh mảnh, phù hợp thời trang cho các bạn Nữ và Nam')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP019', N'Kính Cận Nhựa Cứng GC006', N'ML001', 3, 320000, N'Tặng kèm khan lau kính và hộp đựng kính xinh xắn. ', N'h19.jpg', N'Trắng trog', N'Kiểu dáng thời trang,trẻ trung,năng động.Thiết kế phù hợp cho cả nam và nữ đều đeo được.Chất lượng tốt giá thành mềm,vượt qua sự mong đợi của khách hang,độ chịu lực cao cho mắt cận nặng! kính được làm bằng nhựa dẻo nên ôm sát khuân mặt,không gây hằn vết lên sống mũi,kiểu dáng và màu sắc ( Đen,Trắng trong,Vàng,..) đa dạng cho khách hang thoải mái lựa chọn.  Kích Thước: Chiều cao 14cm , Chiều ngang 5cm')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP020', N'Kính Cận GT182', N'ML001', 1, 500000, NULL, N'h20.jpg', N'Đen       ', N'Kính GT182 kiểu dáng thanh mảnh, tinh tế. Dáng kính nhẹ nhàng, Kiểu dáng thời trang, rất nhẹ tạo sự Thoải Mái Nhất - Không in hằn lên sống mũi!')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP021', N'KÍNH VELOCITY VL97451_053', N'ML001', 2, 450000, N'1 gọng kính Velocity VL97451_053 cao cấp. khăn lau kính mềm', N'h21.jpg', N'Nâu bóng  ', N'KÍNH VELOCITY VL97451_053 thiết kế dáng gọng mang hơi hướng mắt mèo rất thích hợp cho những bạn nữ cá tính, thời trang và sành điệu. Sự kết hợp hài hòa giữa nâu bóng và đen khiến cho chiếc kính rất nổi bật trên khuôn mặt, khiến đối phương như bị hút hồn kể từ ánh nhìn đầu tiên. Đặc biệt gọng kính được cấu tạo từ nhựa dẻo, rất bền và nhẹ, càng kính được làm bóng tạo cảm giác thoải mái cho người đeo.
Hộp đựng sang trọng, thích hợp làm quà tặng cho bạn bè, người thân.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP022', N'KÍNH CAROLINA HERRERA VHN565S_OV83', N'ML001', 6, 6500000, NULL, N'h22.jpg', N'Nâu đốm   ', N'thiết kế sang trọng, quý phái và thời trang của thương hiệu trứ danh. Họa tiết đốm ở phần càng kính làm nổi bật sự quyền lực, quyến rũ, hấp dẫn của cây kính này. Đặc biệt, phần đuôi cách điệu giống như một mũi lao đem lại sự sắc sảo và uy quyền cho bản thân cây kính và người đeo. 
Hộp đựng sang trọng, thích hợp làm quà tặng cho bạn bè, người thân.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP023', N'KÍNH VELOCITY VL26670_C04', N'ML001', 2, 520000, NULL, N'h23.jpg', N'Đen bạc   ', N' KÍNH VELOCITY VL26670_C04 vừa mang nét cổ điển, nhẹ nhàng lại ẩn chứa trong đó dáng dấp của kiểu thiết kế hiện đại. Dáng gọng này khá phù hợp với những ai có gương mặt hơi góc cạnh, mặt vuông hoặc hình chữ nhật, hoặc mặt hình trái xoan. Sự kết hợp của màu đen trầm lắng cùng màu sắc ánh bạc của càng kính rất phù hợp với những người sống nội tâm, và sâu sắc.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP024', N'Kính mát nam đẹp nhât', N'ML003', 3, 650000, N'Tặng kính đi đêm', N'h24.jpg', N'Đen       ', N'Chống tia cực tím , chống xước , chống vỡ.
có thể co giản
Chống chói mắt UV400, Chống bụi
Gọng titan chống bong tróc
Giảm mỏi mắt
Chống tia cực tím , chống xước , chống vỡ.
có thể co giản
Chống chói mắt UV400, Chống bụi
Gọng titan chống bong tróc
Giảm mỏi mắt,
- Độ sắc nét cao,')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP025', N'Kính Mát Nam cao cấp Hiệu VEITHDIA 2462', N'ML003', 4, 350000, NULL, N'h25.jpg', N'Đen       ', N'Sản phẩm kính phân cực chống tia UV giúp bảo vệ mắt một cách tốt nhất. Mắt kính có chỉ số UV 400 (100%UV), là chỉ số chống lại tia cực tím cao nên sẽ bảo vệ tối đa đôi mắt của các bạn. Phù hợp với tiêu chuẩn và yêu cầu an toàn của ECC Châu Âu và Mỹ. Bảo vệ mắt chống lại các tia UVA và tia UVB. Cấu tạo mắt kính có bộ lọc loại 3 và lớp quang học loại 1. Có ống kính phân cực giúp lọc và loại bỏ những ánh sáng phân cực phản xạ lại. Cải thiện độ tương phản lớn. Tập trung hình ảnh tốt hơn cho bạn. Cấu trúc gọng kính được làm bằng vật liệu bền bĩ chắc chắn, phù hợp mọi khuôn mặt. Gọng hợp kim aluminium, tròng kính phân cực chống chóa ')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP026', N'KÍNH THỜI TRANG NAM PORSCHE CAO CẤP', N'ML003', 5, 310000, N'Trọn bộ sản phẩm gồm: 01 kính Porsche Design P8000 + 01 khăn lau kính + 01 túi đựng kính + 01 hộp kính + 01 sách hướng dẫn.', N'h26.jpg', N'Đen bóng  ', N'Kích cỡ: Tròng 60mm, Cầu nối 12mm, Gọng 140mm
Gọng kính làm bằng kim loại và nhựa cao cấp, bo tròn tinh tế, dáng mảnh và rất nhẹ. Với gam màu sang trọng mang đến phong cách cực kỳ nổi bật cho người dùng.
Tròng kính với chất liệu polarized phân cực chống chói, bảo vệ mặt trước các tác nhân gây hại từ tia UV, cực tím...cho tới bụi bặm đường phố. Đặc biệt vật liệu polycarbonate được gia cố để hạn chế trầy xước, va đập. Lớp váng đầu chống bám nước')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP027', N'Kính mát nam phân cực BLSBlues 14016', N'ML003', 6, 599000, NULL, N'h27.jpg', N'Đen       ', N'Kính mắt nam phân cực BLSBlues 14016 có thiết kế mắt kính tăng cường độ dày, độ cứng, mắt kính phân cực 9 lớp lọc có đặc tính nhẹ, chống xước, chống va đập có tác dụng gia tăng độ rõ nét, chống mỏi mắt, chống tia cực tím, chống bức xạ, chống ánh sáng chói cho hiệu quả bảo vệ mắt tối đa.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP028', N'Kính lão nửa gọng mạ vàng', N'ML005', 3, 300000, NULL, N'h28.jpg', N'Vàng      ', N'Chất liệu inox mạ vàng. tròng kính siêu mỏng và chống uv')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP029', N'Kính lão Foster Grant', N'ML005', 3, 560000, NULL, N'h29.jpg', N'Nâu vàng  ', N'Chất liệu : inox và nhựa cường lực.. Có thể sử dụng gọng kính để lắp tròng kính cận thị. tròng kính siêu mỏng, chống tia uv')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP030', N'kính lão cực nhẹ', N'ML005', 5, 700000, NULL, N'h30.jpg', N'Bạc       ', N'size 13cm. chống tia uv')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP031', N'Kính Lão(Viễn) trung niên thời trang cao cấp KV003', N'ML005', 4, 230000, NULL, N'h31.jpg', N'Đen vàng  ', N'CHỐNG TIA SÁNG XANH (ĐỠ MỎI VÀ KHÔ MẮT). Mắt kính bằng thủy tinh nhân tạo, nhẹ, bền, chống xước tốt, trong hơn thủy tinh thường. 

Gọng bằng hợp kim chống rỉ và không bay mầu.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP032', N'Kính lão (viễn thị) dành cho người trung niên, người già. ', N'ML005', 1, 150000, N'khi đeo kính vào và lấy kính ra bằng 2 tay để kính ko bị rộng chệch lạc. 
- tránh để kính ở những nơi có nhiệt độ quá cao như cốp xe, ánh nắng trực tiếp, phòng xông hơi,...
- dùng khăn lau kính bằng vải mềm, không dùng áo lau kính tránh gây trầy xước kính. 
- khi không sử dụng kính cất kính vào hộp đựng kính để bảo quản..', N'h32.JPG', N'Vàng nâu  ', N'Gấp xếp gọn gàng, nhẹ nhàng.
Tròng kính bằng thuỷ tinh chống trầy.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP033', N'Kính Dupont mạ vàng 18k', N'ML005', 5, 5000000, NULL, N'h33.jpg', N'Vàng      ', N'Kiểu dáng sang trọng quý phái toát lên sự lịch lãm khi gặp đối tác

- Thời hạn sử dụng cực bền mà không lo bay màu mạ, thời gian sử dụng lên tới trên 10 năm')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP034', N'Kính Lacoste cao cấp', N'ML005', 1, 650000, NULL, N'h34.jpg', N'Trắng kem ', N'Kiểu dáng vuông nam tính cho phái mạnh

- màu vàng nhạt kết hộp nhôm trắng tạo sự sang trọng, chắc chắn

- Gọng kính được thiết kế chi tiết từng đường nét nhỏ,

- Logo không phai theo thời gian')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP035', N'Kính lão thời trang nữ MS51583', N'ML006', 3, 600000, NULL, N'h35.jpg', N'Đỏ hoa    ', N'Chất liệu : nhựa cường lực.  chống tia uv')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP036', N'Kính lão nữ không viền chống ánh sáng xanh cho người làm việc máy tính', N'ML006', 2, 390000, N'Khi đeo kính vào và lấy kính ra bằng 2 tay để kính ko bị rộng chật lệch lạc
 - Tránh để kính ở nơi có nhiệt độ cao như cốp xe, phòng xông hơi, ánh nắng trực tiếp...
 - Dùng khăn sạch lau kính , không dùng áo để lau kính sẽ gây trầy xước kính...
 - Khi không Sử dụng bảo quản kính trong hộp đựng kính', N'h36.jpg', N'Tím       ', N'Form vuông
 Gọng kinh không viền cho tác phong sang trọng. Thay được mắt kính cận, viễn, loạn')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP037', N'Kính Titan Cao Cấp C.D', N'ML006', 1, 3000000, NULL, N'h37.jpg', N'Vàng tím  ', N'với thiết kế thời trang đẳng cấp cùng chất gọng full titan siêu nhẹ

- có thể nói đây là mẫu gọng lắp lão đẹp và tốt nhất thị trường hiện nay. Dáng mắt Hình Oval điểm nhấn các góc làm cho kính tuy đơn giả dễ đeo nhưng vẫn sắc nét trên khuôn mặt bạn. kính được thiết kế rất thời trang với các đường nét chi tiết nhỏ, sang trọng quý phái')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP038', N'KÍNH LÃO MẠ VÀNG FOSTER GRANT ', N'ML006', 3, 300000, NULL, N'h38.jpg', N'Vàng đốm  ', N'với thiết kế thời trang đẳng cấp cùng chất gọng full titan siêu nhẹ

- có thể nói đây là mẫu gọng lắp lão đẹp và tốt nhất thị trường hiện nay. Dáng mắt Hình Oval điểm nhấn các góc làm cho kính tuy đơn giả dễ đeo nhưng vẫn sắc nét trên khuôn mặt bạn. kính được thiết kế rất thời trang với các đường nét chi tiết nhỏ, sang trọng quý phái')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP039', N'MẮT KÍNH LÃO INOX 868', N'ML006', 5, 250000, NULL, N'h39.jpg', N'Bạc       ', N'Chất liệu gọng : inox (hợp kim không gỉ, bị hút bởi nam châm)
Chất liệu tròng kính : nhựa cường lực
Thương hiệu : 868
Kích thước : 31 x 49 x 131 mm
Ưu điểm : Bền, chắc chắn, không bị oxy hóa.
Gọng kính phù hợp cho người có cân nặng dưới 68 kg.')
INSERT [dbo].[tbl_SanPham] ([MaSanPham], [TenSP], [MaL], [MaSX], [Gia], [GhiChu], [Hinh], [MauSac], [MoTa]) VALUES (N'SP040', N'Kính cận xếp màu đỏ', N'ML006', 1, 300000, NULL, N'h40.jpg', N'Đỏ        ', N'Chất liệu gọng : inox

Chân mắt kính với cấu trúc rút lại như anten. chất liệu siêu bền, không oxy hóa.')
ALTER TABLE [dbo].[tbl_ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HoaDON] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tbl_HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[tbl_ChiTietHD] CHECK CONSTRAINT [FK_CTHD_HoaDON]
GO
ALTER TABLE [dbo].[tbl_ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_SP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tbl_SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[tbl_ChiTietHD] CHECK CONSTRAINT [FK_CTHD_SP]
GO
ALTER TABLE [dbo].[tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_tbl_HoaDon_tbl_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tbl_KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[tbl_HoaDon] CHECK CONSTRAINT [FK_tbl_HoaDon_tbl_KhachHang]
GO
ALTER TABLE [dbo].[tbl_Loai]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Loai_tbl_Nhom] FOREIGN KEY([Nhom])
REFERENCES [dbo].[tbl_Nhom] ([MaNhom])
GO
ALTER TABLE [dbo].[tbl_Loai] CHECK CONSTRAINT [FK_tbl_Loai_tbl_Nhom]
GO
ALTER TABLE [dbo].[tbl_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SanPham_tbl_Loai] FOREIGN KEY([MaL])
REFERENCES [dbo].[tbl_Loai] ([MaLoai])
GO
ALTER TABLE [dbo].[tbl_SanPham] CHECK CONSTRAINT [FK_tbl_SanPham_tbl_Loai]
GO
ALTER TABLE [dbo].[tbl_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SanPham_tbl_NhaSanXuat] FOREIGN KEY([MaSX])
REFERENCES [dbo].[tbl_NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[tbl_SanPham] CHECK CONSTRAINT [FK_tbl_SanPham_tbl_NhaSanXuat]
GO
