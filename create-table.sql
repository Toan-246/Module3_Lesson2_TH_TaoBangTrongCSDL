
create database QuanLyDiemThi;
use QuanLyDiemThi;
create table HocSinh(
MaHS varchar (20) primary key,
TenHS varchar (50),
NgaySinh datetime,
Lop varchar (20),
GT varchar (20)
);
create table MonHoc (
MaMH varchar (20) primary key,
TenMH varchar (50)
);create table BangDiem (
MaHs varchar (20),
MaMH varchar (20),
DiemThi int,
NgayKT datetime,
primary key (MaHs, MaMH),
foreign key (MaHS) references HocSinh (MaHs),
foreign key (MaMh) references MonHoc (MaMH)
);
drop table BangDiem;
create table BangDiem (
MaHs varchar (20),
MaMH varchar (20),
DiemThi int,
NgayKT datetime,
primary key (MaHs, MaMh),
foreign key (MaHS) references HocSinh (MaHs),
foreign key (MaMh) references MonHoc (MaMH)
);
CREATE TABLE GiaoVien(
    MaGV VARCHAR(20) PRIMARY KEY,
    TenGV VARCHAR(20),
    SDT VARCHAR(10)
);
alter table MonHoc add MaGV varchar (20);
alter table MonHoc add constraint FK_MaGV foreign key (MaGV) references GiaoVien(MaGV);
