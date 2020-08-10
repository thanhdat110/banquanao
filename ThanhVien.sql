create table ThanhVien
(
Ten nvarchar(200),
Tendem nvarchar(200),
mail nvarchar(200),
sdt nvarchar(200),
cm nvarchar(200),
TenTV nvarchar(200),
mk nvarchar(200),
diachi nvarchar(200),
tuoi nvarchar(200),
noilv nvarchar(200),
anh nvarchar(200)
)
create table HangHoa
(
MAMH nvarchar(200),
TENMH nvarchar(200),
GIA int,
ANH nvarchar(200),
THONGTIN nvarchar(max),
SK nvarchar(200),
XUATXU NVARCHAR(200),
CHATLIEU  NVARCHAR(200),
SIZE NVARCHAR(200),
GIACU NVARCHAR(200),
MALOAI  NVARCHAR(200),
SOLUONG INT
)
create table danhgia
(
MAMH nvarchar(200),
VOTE nvarchar(200),
DANHGIA nvarchar(200),
)
CREATE TABLE GIOHANG
(
MAMH nvarchar(200),
TENMH nvarchar(200),
GIA nvarchar(200),
ANH nvarchar(200),
SOLUONG NVARCHAR(200),
TONGTIEN int,
)
CREATE TABLE PHANLOAI
(
MALOAI  NVARCHAR(200),
TENLOAI  NVARCHAR(200),
MAGT  NVARCHAR(200),
)
CREATE TABLE GTHANGHOA
(
MAGT  NVARCHAR(200),
TENGT  NVARCHAR(200),
)

insert into ThanhVien
values (N'Thanh','Tran','thanh@gmail.com','052522555','123456789','thanh','1','dongnai','20','tphcm','')
INSERT INTO HangHoa
VALUES (N'M1',N'Đầm hàn quốc 01',N'50000',N'images/products/small/products-01.png',N'Chất lụa voan 2 lớp nên khách yên tâm mặc ko mỏng lộ khách nhé Em về thêm ạ. Em có mã sơ mi trắng tay bèo thắt nơ xinh quá lun các chị ơi. Cơ mà cả thảy được 60c chế nào ưng ới em luôn nhen. Áo được làm từ chất vải lụa dư đẹp mê mẩn lun ,mặt vải sang cực, cầm hàng đảm bảo ưng hết nấc. Chất vải dày dặn, co giãn, thấm hút tốt, không nhăn nhàu cực hợp với dáng áo. Đẹp từ cái cổ đẹp đi, dáng peplum mặc lên nhẹ nhàng, xinh iu lắm lun. Phối đồ mix đủ kiểu đều hợp, chảnh hết sức. Áo sang xịn mịn.',N'-20%',N'Việt Nam"',N'dày dặn, co giãn, thấm hút tốt, không nhăn nhàu',N'S.M.L',N'60000',N'L02',5),
  	   (N'M2',N'Đầm hàn quốc 02',N'50000',N'images/products/small/products-02.png',N'Chất lụa voan 2 lớp nên khách yên tâm mặc ko mỏng lộ khách nhé Em về thêm ạ. Em có mã sơ mi trắng tay bèo thắt nơ xinh quá lun các chị ơi. Cơ mà cả thảy được 60c chế nào ưng ới em luôn nhen. Áo được làm từ chất vải lụa dư đẹp mê mẩn lun ,mặt vải sang cực, cầm hàng đảm bảo ưng hết nấc. Chất vải dày dặn, co giãn, thấm hút tốt, không nhăn nhàu cực hợp với dáng áo. Đẹp từ cái cổ đẹp đi, dáng peplum mặc lên nhẹ nhàng, xinh iu lắm lun. Phối đồ mix đủ kiểu đều hợp, chảnh hết sức. Áo sang xịn mịn.',N'Hot',N'Việt Nam"',N'dày dặn, co giãn, thấm hút tốt, không nhăn nhàu',N'S.M.L',N'60000',N'L02',5),
	   (N'M3',N'Đầm hàn quốc 03',N'50000',N'images/products/small/products-03.png',N'Chất lụa voan 2 lớp nên khách yên tâm mặc ko mỏng lộ khách nhé Em về thêm ạ. Em có mã sơ mi trắng tay bèo thắt nơ xinh quá lun các chị ơi. Cơ mà cả thảy được 60c chế nào ưng ới em luôn nhen. Áo được làm từ chất vải lụa dư đẹp mê mẩn lun ,mặt vải sang cực, cầm hàng đảm bảo ưng hết nấc. Chất vải dày dặn, co giãn, thấm hút tốt, không nhăn nhàu cực hợp với dáng áo. Đẹp từ cái cổ đẹp đi, dáng peplum mặc lên nhẹ nhàng, xinh iu lắm lun. Phối đồ mix đủ kiểu đều hợp, chảnh hết sức. Áo sang xịn mịn.',N'-50%',N'Việt Nam"',N'dày dặn, co giãn, thấm hút tốt, không nhăn nhàu',N'S.M.L',N'60000',N'L02',5),
	   (N'M4',N'Đầm hàn quốc 04',N'50000',N'images/products/small/products-04.png',N'Chất lụa voan 2 lớp nên khách yên tâm mặc ko mỏng lộ khách nhé Em về thêm ạ. Em có mã sơ mi trắng tay bèo thắt nơ xinh quá lun các chị ơi. Cơ mà cả thảy được 60c chế nào ưng ới em luôn nhen. Áo được làm từ chất vải lụa dư đẹp mê mẩn lun ,mặt vải sang cực, cầm hàng đảm bảo ưng hết nấc. Chất vải dày dặn, co giãn, thấm hút tốt, không nhăn nhàu cực hợp với dáng áo. Đẹp từ cái cổ đẹp đi, dáng peplum mặc lên nhẹ nhàng, xinh iu lắm lun. Phối đồ mix đủ kiểu đều hợp, chảnh hết sức. Áo sang xịn mịn.',N'-5%',N'Việt Nam"',N'dày dặn, co giãn, thấm hút tốt, không nhăn nhàu',N'S.M.L',N'60000',N'L02',5),
	   (N'M5',N'Đầm hàn quốc 05',N'50000',N'images/products/small/products-05.png',N'Chất lụa voan 2 lớp nên khách yên tâm mặc ko mỏng lộ khách nhé Em về thêm ạ. Em có mã sơ mi trắng tay bèo thắt nơ xinh quá lun các chị ơi. Cơ mà cả thảy được 60c chế nào ưng ới em luôn nhen. Áo được làm từ chất vải lụa dư đẹp mê mẩn lun ,mặt vải sang cực, cầm hàng đảm bảo ưng hết nấc. Chất vải dày dặn, co giãn, thấm hút tốt, không nhăn nhàu cực hợp với dáng áo. Đẹp từ cái cổ đẹp đi, dáng peplum mặc lên nhẹ nhàng, xinh iu lắm lun. Phối đồ mix đủ kiểu đều hợp, chảnh hết sức. Áo sang xịn mịn.',N'VIP',N'Việt Nam"',N'dày dặn, co giãn, thấm hút tốt, không nhăn nhàu',N'S.M.L',N'60000',N'L02',5),
	   (N'M6',N'Đầm hàn quốc 06',N'50000',N'images/products/small/products-06.png',N'Chất lụa voan 2 lớp nên khách yên tâm mặc ko mỏng lộ khách nhé Em về thêm ạ. Em có mã sơ mi trắng tay bèo thắt nơ xinh quá lun các chị ơi. Cơ mà cả thảy được 60c chế nào ưng ới em luôn nhen. Áo được làm từ chất vải lụa dư đẹp mê mẩn lun ,mặt vải sang cực, cầm hàng đảm bảo ưng hết nấc. Chất vải dày dặn, co giãn, thấm hút tốt, không nhăn nhàu cực hợp với dáng áo. Đẹp từ cái cổ đẹp đi, dáng peplum mặc lên nhẹ nhàng, xinh iu lắm lun. Phối đồ mix đủ kiểu đều hợp, chảnh hết sức. Áo sang xịn mịn.',N'',N'Việt Nam"',N'dày dặn, co giãn, thấm hút tốt, không nhăn nhàu',N'S.M.L',N'60000',N'L02',5),
	   (N'M7',N'Đầm hàn quốc 07',N'50000',N'images/products/small/products-07.png',N'Chất lụa voan 2 lớp nên khách yên tâm mặc ko mỏng lộ khách nhé Em về thêm ạ. Em có mã sơ mi trắng tay bèo thắt nơ xinh quá lun các chị ơi. Cơ mà cả thảy được 60c chế nào ưng ới em luôn nhen. Áo được làm từ chất vải lụa dư đẹp mê mẩn lun ,mặt vải sang cực, cầm hàng đảm bảo ưng hết nấc. Chất vải dày dặn, co giãn, thấm hút tốt, không nhăn nhàu cực hợp với dáng áo. Đẹp từ cái cổ đẹp đi, dáng peplum mặc lên nhẹ nhàng, xinh iu lắm lun. Phối đồ mix đủ kiểu đều hợp, chảnh hết sức. Áo sang xịn mịn.',N'',N'Việt Nam"',N'dày dặn, co giãn, thấm hút tốt, không nhăn nhàu',N'S.M.L',N'60000',N'L02',5),
	   (N'M8',N'Đầm hàn quốc 07',N'50000',N'images/products/small/products-07.png',N'Chất lụa voan 2 lớp nên khách yên tâm mặc ko mỏng lộ khách nhé Em về thêm ạ. Em có mã sơ mi trắng tay bèo thắt nơ xinh quá lun các chị ơi. Cơ mà cả thảy được 60c chế nào ưng ới em luôn nhen. Áo được làm từ chất vải lụa dư đẹp mê mẩn lun ,mặt vải sang cực, cầm hàng đảm bảo ưng hết nấc. Chất vải dày dặn, co giãn, thấm hút tốt, không nhăn nhàu cực hợp với dáng áo. Đẹp từ cái cổ đẹp đi, dáng peplum mặc lên nhẹ nhàng, xinh iu lắm lun. Phối đồ mix đủ kiểu đều hợp, chảnh hết sức. Áo sang xịn mịn.',N'',N'Việt Nam"',N'dày dặn, co giãn, thấm hút tốt, không nhăn nhàu',N'S.M.L',N'60000',N'L02',5)
INSERT INTO PHANLOAI
VALUES  ('L01',N'Váy',N'PL02'),
		('L02',N'Đầm',N'PL02'),
		('L03',N'Quần Nam',N'PL01'),
		('L04',N'Áo Nam',N'PL01')
INSERT INTO GTHANGHOA
VALUES  ('PL01',N'NAM'),
		('PL02',N'NỮ')

