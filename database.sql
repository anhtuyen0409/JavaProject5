USE [DoAnJava]
GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaCTDDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[UuDai] [int] NULL,
	[ThanhTien] [int] NULL,
	[DaXoa] [int] NULL,
	[TongThanhToan] [int] NULL,
 CONSTRAINT [PK_ChiTietDonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaCTDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaCTPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_ChiTietPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaCTPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[DaXoa] [int] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](200) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SDT] [varchar](12) NULL,
	[Email] [varchar](100) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiNhanVien]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNhanVien](
	[MaLoaiNV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiNV] [nvarchar](100) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_LoaiNhanVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](200) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoan](
	[MaLoaiTK] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTK] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](200) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SDT] [varchar](12) NULL,
	[Email] [varchar](100) NULL,
	[Fax] [varchar](50) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[TenNV] [nvarchar](200) NULL,
	[NamSinh] [date] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SDT] [varchar](12) NULL,
	[Email] [varchar](100) NULL,
	[NgayVaoLamViec] [date] NULL,
	[DaXoa] [int] NULL,
	[MaLoaiNV] [int] NULL,
	[TenDangNhap] [varchar](100) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](200) NULL,
	[ThongTin] [nvarchar](max) NULL,
	[DaXoa] [int] NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [datetime] NULL,
	[DaXoa] [int] NULL,
	[MaNV] [int] NULL,
	[MaNCC] [int] NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](200) NULL,
	[DonGia] [int] NULL,
	[NgayCapNhat] [date] NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [varchar](200) NULL,
	[SLTon] [int] NULL,
	[DaXoa] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenDangNhap] [varchar](100) NOT NULL,
	[MatKhau] [varchar](100) NULL,
	[DaXoa] [int] NULL,
	[MaLoaiTK] [int] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_LoaiNhanVien] FOREIGN KEY([MaLoaiNV])
REFERENCES [dbo].[LoaiNhanVien] ([MaLoaiNV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_LoaiNhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TaiKhoan] FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[TaiKhoan] ([TenDangNhap])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TaiKhoan]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham1] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham1]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap1] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap1]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat1] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat1]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan] FOREIGN KEY([MaLoaiTK])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoaiTK])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_LoaiTaiKhoan]
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoChiTietDonDatHangTheoMaDonDatHang]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoChiTietDonDatHangTheoMaDonDatHang]
@maDDH int
as
select MaCTDDH "Mã chi tiết đơn hàng", TenSP "Sản phẩm", SoLuong "Số lượng", 
ThanhTien "Thành tiền", UuDai "Ưu đãi", TongThanhToan "Tổng thanh toán"
from DonDatHang ddh, ChiTietDonDatHang ctddh, SanPham sp
where ddh.MaDDH = ctddh.MaDDH and ctddh.MaSP = sp.MaSP and ctddh.DaXoa=0 and ctddh.MaDDH = @maDDH
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoChiTietPhieuNhap]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoChiTietPhieuNhap]
as
select MaCTPN "Mã chi tiết phiếu nhập", ctpn.MaPN "Mã phiếu nhập", TenSP "Sản phẩm", SoLuong "Số lượng"
from PhieuNhap pn, ChiTietPhieuNhap ctpn, SanPham sp
where pn.MaPN = ctpn.MaPN and ctpn.MaSP = sp.MaSP and ctpn.DaXoa=0
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoChiTietPhieuNhapTheoMaPhieuNhap]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoChiTietPhieuNhapTheoMaPhieuNhap]
@maPN int
as
select MaCTPN "Mã chi tiết phiếu nhập", ctpn.MaPN "Mã phiếu nhập", TenSP "Sản phẩm", SoLuong "Số lượng"
from PhieuNhap pn, ChiTietPhieuNhap ctpn, SanPham sp
where pn.MaPN = ctpn.MaPN and ctpn.MaSP = sp.MaSP and ctpn.DaXoa=0 and pn.MaPN=@maPN
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoDonDatHang]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoDonDatHang]
as
select MaDDH "Mã đơn hàng", TenKH "Khách hàng", NgayDat "Ngày đặt hàng", NgayGiao "Ngày giao hàng"
from DonDatHang ddh, KhachHang kh
where ddh.MaKH = kh.MaKH and ddh.DaXoa=0
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoDonDatHangTheoMaKhachHang]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoDonDatHangTheoMaKhachHang]
@maKH int
as
select MaDDH "Mã đơn hàng", TenKH "Khách hàng", NgayDat "Ngày đặt hàng", NgayGiao "Ngày giao hàng"
from DonDatHang ddh, KhachHang kh
where ddh.MaKH = kh.MaKH and ddh.DaXoa=0 and ddh.MaKH = @maKH
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoNhanVien]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoNhanVien]
as
select MaNV "Mã nhân viên", TenNV "Tên nhân viên", NamSinh "Năm sinh", DiaChi "Địa chỉ",
SDT "Số điện thoại", Email "Email", NgayVaoLamViec "Ngày vào làm việc", TenLoaiNV "Bộ phận",
TenDangNhap "Tài khoản"
from NhanVien nv, LoaiNhanVien lnv
where nv.MaLoaiNV = lnv.MaLoaiNV and nv.DaXoa=0
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoNhanVienTheoBoPhan]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoNhanVienTheoBoPhan]
@maBP int
as
select MaNV "Mã nhân viên", TenNV "Tên nhân viên", NamSinh "Năm sinh", DiaChi "Địa chỉ",
SDT "Số điện thoại", Email "Email", NgayVaoLamViec "Ngày vào làm việc", TenLoaiNV "Bộ phận",
TenDangNhap "Tài khoản"
from NhanVien nv, LoaiNhanVien lnv
where nv.MaLoaiNV = lnv.MaLoaiNV and nv.DaXoa=0 and nv.MaLoaiNV = @maBP
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoNhanVienTheoTaiKhoan]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[HienThiToanBoNhanVienTheoTaiKhoan]
@taiKhoan varchar(30)
as
select MaNV "Mã nhân viên", TenNV "Tên nhân viên", NamSinh "Năm sinh", DiaChi "Địa chỉ",
SDT "Số điện thoại", Email "Email", NgayVaoLamViec "Ngày vào làm việc", TenLoaiNV "Bộ phận",
TenDangNhap "Tài khoản"
from NhanVien nv, LoaiNhanVien lnv
where nv.MaLoaiNV = lnv.MaLoaiNV and nv.DaXoa=0 and nv.TenDangNhap = @taiKhoan
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoPhieuNhap]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[HienThiToanBoPhieuNhap]
as
select MaPN "Mã phiếu", NgayNhap "Ngày lập", TenNV "Tên nhân viên", TenNCC "Nhà cung cấp"
from PhieuNhap pn, NhanVien nv, NhaCungCap ncc
where pn.MaNV = nv.MaNV and pn.MaNCC = ncc.MaNCC and pn.DaXoa=0
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoPhieuNhapTheoMaNhaCungCap]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoPhieuNhapTheoMaNhaCungCap]
@maNCC int
as 
select MaPN "Mã phiếu", NgayNhap "Ngày lập", TenNV "Tên nhân viên", TenNCC "Nhà cung cấp"
from PhieuNhap pn, NhanVien nv, NhaCungCap ncc
where pn.MaNV = nv.MaNV and pn.MaNCC = ncc.MaNCC and pn.DaXoa=0 and pn.MaNCC=@maNCC
GO
/****** Object:  StoredProcedure [dbo].[HienThiToanBoPhieuNhapTheoMaNhanVien]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HienThiToanBoPhieuNhapTheoMaNhanVien]
@maNV int
as 
select MaPN "Mã phiếu", NgayNhap "Ngày lập", TenNV "Tên nhân viên", TenNCC "Nhà cung cấp"
from PhieuNhap pn, NhanVien nv, NhaCungCap ncc
where pn.MaNV = nv.MaNV and pn.MaNCC = ncc.MaNCC and pn.DaXoa=0 and pn.MaNV=@maNV
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachTaiKhoanTheoMaLoaiTaiKhoan]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[LayDanhSachTaiKhoanTheoMaLoaiTaiKhoan]
@maLoaiTK int
as
select * from TaiKhoan where MaLoaiTK = @maLoaiTK
GO
/****** Object:  StoredProcedure [dbo].[ThongKeDoanhThuTheoNgay]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThongKeDoanhThuTheoNgay]
as
select NgayDat "Ngày", sum(TongThanhToan) "Số tiền thu được"
from DonDatHang ddh, ChiTietDonDatHang ct
where ddh.MaDDH = ct.MaDDH
group by NgayDat
GO
/****** Object:  StoredProcedure [dbo].[ThongKeDoanhThuTheoThang]    Script Date: 30/04/2022 5:22:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ThongKeDoanhThuTheoThang]
@nam int
as
select MONTH(NgayDat) "Tháng", sum(TongThanhToan) "Số tiền thu được"
from DonDatHang ddh, ChiTietDonDatHang ct
where ddh.MaDDH = ct.MaDDH and YEAR(NgayDat)=@nam
group by MONTH(NgayDat)
GO
