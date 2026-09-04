-- Gõ các câu lệnh DDL để tạo database 
-- Bước 1 : Tạo Database 
-- Câu lệnh để tạo tên database : (CREATE DATABASE ten_database)
CREATE DATABASE Chuoi_Konbini;  

-- Bước 2 : Nhảy vào kho để thao tác với kho (USE ten_database)
USE Chuoi_Konbini;
 
-- Bước 3 : Đi tạo các bảng có trong DATABASE (Bảng sản phẩm , bảng kho)
--  CREATE TABLE ten_bang có trong database 

-- Kiểu dữ liệu trong MySQL :
-- Chữ : VARCHAR(255) => chuỗi này max là 255 ký tự 
-- Số : INT => Lưu trữ số 
-- Ngày tháng DATE 

CREATE TABLE Kho (
	ma_kho INT PRIMARY KEY ,
    dia_chi_kho VARCHAR(255) NOT NULL 
);

-- PRIMARY KEY , NOT NULL , CHECK , UNIQUE (Độc nhất) ,
-- DEFAULT (Gán mặc định) giá trị 
-- => Được gọi chung là Contranstaint (Ràng buộc)
 
CREATE TABLE San_Pham (
	ma_san_pham VARCHAR(5) PRIMARY KEY,
    ten_san_pham VARCHAR(200) NOT NULL,
    gia_san_pham INT CHECK (gia_san_pham > 0),
    ma_kho_san_pham INT,
    FOREIGN KEY (ma_kho_san_pham) REFERENCES Kho(ma_kho)
);

--  Sửa thuộc tính của bảng (Dùng từ khóa ALTER)
ALTER TABLE Kho ADD so_dien_thoai_kho VARCHAR(11);

-- Xóa dữ liệu bảng , hoặc database (DROP)
DROP DATABASE Chuoi_Konbini;



 
 