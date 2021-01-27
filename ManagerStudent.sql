CREATE DATABASE `ManagerStudent`;

USE `ManagerStudent`;

CREATE TABLE `Address`(
`id`INT NOT NULL PRIMARY KEY,
`name`VARCHAR(255));


CREATE TABLE `Classes`(
`id` INT NOT NULL PRIMARY KEY,
`name` VARCHAR(30) NOT NULL,
`language` VARCHAR(30) NOT NULL,
`description`TEXT NULL);


CREATE TABLE `Students`(
`id` INT NOT NULL PRIMARY KEY,
`fullname` VARCHAR(30) NOT NULL,
`address_id` INT,
`phone` VARCHAR(11) NOT NULL UNIQUE,
`class_id`INT);

CREATE TABLE `Course`(
`id` INT NOT NULL PRIMARY KEY,
`name` VARCHAR(30) NOT NULL,
`description` TEXT NULL);

CREATE TABLE `Point`(
`id` INT NOT NULL PRIMARY KEY,
`course_id` INT,
`student_id` INT,
`points`INT);

ALTER TABLE `Students`
ADD FOREIGN KEY(`address_id`)
REFERENCES `Address` (`id`);

ALTER TABLE `Students`
ADD FOREIGN KEY(`class_id`)
REFERENCES `Classes`(`id`);

ALTER TABLE `Point`
ADD FOREIGN KEY(`course_id`)
REFERENCES `Course` (`id`);

ALTER TABLE `Point`
ADD FOREIGN KEY(`student_id`)
REFERENCES `Students` (`id`);

INSERT INTO `ManagerStudent`.`Address`(`id`,`name`) VALUE('1', 'Tran Van A');
INSERT INTO `ManagerStudent`.`Address`(`id`,`name`) VALUE('2', 'Tran Van B');
INSERT INTO `ManagerStudent`.`Address`(`id`,`name`) VALUE('3', 'Tran Van C');
INSERT INTO `ManagerStudent`.`Address`(`id`,`name`) VALUE('4', 'Tran Van D');
INSERT INTO `ManagerStudent`.`Address`(`id`,`name`) VALUE('5', 'Tran Van E');

INSERT INTO `ManagerStudent`.`Classes`(`id`,`name`,`language`,`description`) VALUE('1', 'Tran Van A','Java','Programer.OOP');
INSERT INTO `ManagerStudent`.`Classes`(`id`,`name`,`language`,`description`) VALUE('2', 'Tran Van B','C++','Programer.OOP');
INSERT INTO `ManagerStudent`.`Classes`(`id`,`name`,`language`,`description`) VALUE('3', 'Tran Van C','C#','Programer.OOP');
INSERT INTO `ManagerStudent`.`Classes`(`id`,`name`,`language`,`description`) VALUE('4', 'Tran Van D','PHP','Programer.OOP');
INSERT INTO `ManagerStudent`.`Classes`(`id`,`name`,`language`,`description`) VALUE('5', 'Tran Van E','Ruby','Programer.OOP');

INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(1, 'Tran Van A',1,'0902123456',1);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(2, 'Tran Van B',2,'0902123457',2);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(3, 'Tran Van C',3,'0902123458',3);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(4, 'Tran Van D',4,'0902123459',4);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(5, 'Tran Van E',5,'0902123450',5);


INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(6, 'Tran Van F',6,'0902123411',6);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(7, 'Tran Van G',7,'0902123412',7);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(8, 'Tran Van H',8,'0902123413',8);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(9, 'Tran Van K',9,'0902123414',9);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(10, 'Tran Van J',10,'0902123415',10);

INSERT INTO `ManagerStudent`.`Course`(`id`,`name`,`description`) VALUE (1, 'Tran Van A','abdcdadadfae');
INSERT INTO `ManagerStudent`.`Course` (`id`, `name`, `description`) VALUES (2, 'Tran Van B', 'gsdfgfg');
INSERT INTO `ManagerStudent`.`Course` (`id`, `name`, `description`) VALUES (3, 'Tran Van C', 'gsdfgfg');
INSERT INTO `ManagerStudent`.`Course` (`id`, `name`, `description`) VALUES (4, 'Tran Van D', 'gsdfgfg');
INSERT INTO `ManagerStudent`.`Course` (`id`, `name`, `description`) VALUES (5, 'Tran Van E', 'gsdfgfg');

INSERT INTO `ManagerStudent`.`Point` (`id`, `course_id`, `student_id`, `point`) VALUES ('1', '1', '1', '5');
INSERT INTO `ManagerStudent`.`Point` (`id`, `course_id`, `student_id`, `point`) VALUES ('2', '2', '2', '6');
INSERT INTO `ManagerStudent`.`Point` (`id`, `course_id`, `student_id`, `point`) VALUES ('3', '3', '3', '8');
INSERT INTO `ManagerStudent`.`Point` (`id`, `course_id`, `student_id`, `point`) VALUES ('4', '4', '4', '8');
INSERT INTO `ManagerStudent`.`Point` (`id`, `course_id`, `student_id`, `point`) VALUES ('5', '5', '5', '7');

SELECT COUNT(`id`) 'Tong Cac Hoc Vien Trong Lop' FROM`Classes`;

SELECT COUNT(`id`) 'Tổng số học viên ở các tỉnh' FROM `Address`;

SELECT AVG(`points`) 'Điểm Trung Bình' FROM `Point`;