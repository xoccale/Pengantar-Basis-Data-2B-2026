CREATE DATABASE modul_6;

USE modul_6;

CREATE TABLE kategori (
id_kategori INT PRIMARY KEY,
nama_kategori VARCHAR(50)
);

CREATE TABLE produk (
id_produk INT PRIMARY KEY,
nama_produk VARCHAR(100),
harga INT,
id_kategori INT,
FOREIGN KEY (id_kategori)
REFERENCES kategori(id_kategori)
);

CREATE TABLE transaksi (
id_transaksi INT PRIMARY KEY,
id_produk INT,
jumlah INT,
FOREIGN KEY (id_produk)
REFERENCES produk(id_produk)
);

INSERT INTO kategori
VALUES
(1,'Laptop'),
(2,'Smartphone'),
(3,'Aksesoris');

INSERT INTO produk
VALUES
(101,'Laptop Asus',8500000,1),
(102,'Laptop Lenovo',7500000,1),
(103,'iPhone 13',12000000,2),
(104,'Mouse Logitech',150000,3),
(105,'Keyboard Gaming',500000,3);

INSERT INTO transaksi
VALUES
(1,101,2),
(2,104,5),
(3,103,1),
(4,105,3),
(5,101,1);