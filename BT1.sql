CREATE DATABASE BT1;

USE BT1;

CREATE TABLE customer(
id TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
ten VARCHAR(30) NOT NULL,
tuoi TINYINT NOT NULL,
khoaHoc VARCHAR(30) NOT NULL,
soTien FLOAT NOT NULL);

INSERT INTO customer (ten,tuoi,khoaHoc,soTien) VALUES 
('Hoàng',21,'CNTT',400000),
('Việt',19,'DTVT',320000),
('Thanh',18,'KTDN',400000),
('Nhân',19,'CK',450000),
('Hương',20,'TCNH',500000), 
('Hương',20,'TCNH',200000);

SELECT * FROM customer
WHERE ten = 'Hương';

SELECT ten, SUM(soTien)
FROM customer
WHERE ten = 'Hương';

SELECT DISTINCT ten
FROM customer;
