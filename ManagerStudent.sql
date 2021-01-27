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

INSERT INTO `ManagerStudent`.`Address`(`id`,`name`) VALUE('1', 'HN');
INSERT INTO `ManagerStudent`.`Address`(`id`,`name`) VALUE('2', 'Nghe An');
INSERT INTO `ManagerStudent`.`Address`(`id`,`name`) VALUE('3', 'Vinh');
INSERT INTO `ManagerStudent`.`Address`(`id`,`name`) VALUE('4', 'HCM');
INSERT INTO `ManagerStudent`.`Address`(`id`,`name`) VALUE('5', 'Ca Mau');


INSERT INTO `ManagerStudent`.`Classes`(`id`,`name`,`language`,`description`) VALUE('1', 'Lop A','Java','Programer.OOP');
INSERT INTO `ManagerStudent`.`Classes`(`id`,`name`,`language`,`description`) VALUE('2', 'Lop B','C++','Programer.OOP');
INSERT INTO `ManagerStudent`.`Classes`(`id`,`name`,`language`,`description`) VALUE('3', 'Lop C','C#','Programer.OOP');
INSERT INTO `ManagerStudent`.`Classes`(`id`,`name`,`language`,`description`) VALUE('4', 'Lop D','PHP','Programer.OOP');
INSERT INTO `ManagerStudent`.`Classes`(`id`,`name`,`language`,`description`) VALUE('5', 'Lop E','Ruby','Programer.OOP');


INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(1, 'Tran Van A',1,'0902123456',1);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(2, 'Tran Van B',2,'0902123457',2);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(3, 'Tran Van C',3,'0902123458',3);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(4, 'Tran Van D',4,'0902123459',4);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(5, 'Tran Van E',5,'0902123450',5);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(6, 'Tran Van F',1,'0902123411',1);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(7, 'Tran Van G',2,'0902123412',2);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(8, 'Tran Van H',3,'0902123413',3);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(9, 'Tran Van K',4,'0902123414',4);
INSERT INTO `ManagerStudent`.`Students`(`id`,`fullname`,`address_id`,`phone`,`class_id`) VALUE(10, 'Tran Van J',5,'0902123415',5);


INSERT INTO `ManagerStudent`.`Course`(`id`,`name`,`description`) VALUE (1, 'Tran Van A','abdcdadadfae');
INSERT INTO `ManagerStudent`.`Course` (`id`, `name`, `description`) VALUES (2, 'Tran Van B', 'gsdfgfg');
INSERT INTO `ManagerStudent`.`Course` (`id`, `name`, `description`) VALUES (3, 'Tran Van C', 'gsdfgfg');
INSERT INTO `ManagerStudent`.`Course` (`id`, `name`, `description`) VALUES (4, 'Tran Van D', 'gsdfgfg');
INSERT INTO `ManagerStudent`.`Course` (`id`, `name`, `description`) VALUES (5, 'Tran Van E', 'gsdfgfg');


INSERT INTO `ManagerStudent`.`Point` (`id`, `course_id`, `student_id`, `point`) VALUES (1, 1, 1, 5);
INSERT INTO `ManagerStudent`.`Point` (`id`, `course_id`, `student_id`, `point`) VALUES (2, 2, 2, 6);
INSERT INTO `ManagerStudent`.`Point` (`id`, `course_id`, `student_id`, `point`) VALUES (3, 3, 3, 8);
INSERT INTO `ManagerStudent`.`Point` (`id`, `course_id`, `student_id`, `point`) VALUES (4, 4, 4, 8);
INSERT INTO `ManagerStudent`.`Point` (`id`, `course_id`, `student_id`, `point`) VALUES (5, 5, 5, 7);
INSERT INTO `ManagerStudent`.`Point` (`id`, `course_id`, `student_id`, `points`) VALUES (6, 1, 1, 5);
INSERT INTO `ManagerStudent`.`Point` (`id`, `course_id`, `student_id`, `points`) VALUES (7, '2', 2,5);
INSERT INTO `ManagerStudent`.`Point` (`id`, `course_id`, `student_id`, `points`) VALUES (8, 3, 3, 6);
INSERT INTO `ManagerStudent`.`Point` (`id`, `course_id`, `student_id`, `points`) VALUES (9, 4, 4, 9);
INSERT INTO `ManagerStudent`.`Point` (`id`, `course_id`, `student_id`, `points`) VALUES (10, 5, 5, 2);


SELECT `name`,COUNT(`id`) 'Tong Cac Hoc Vien Trong Lop'FROM `ManagerStudent`.`Classes` GROUP BY `name`;

SELECT `name`, COUNT(`id`) 'Tổng số học viên ở các tỉnh' FROM `ManagerStudent`.`Address` GROUP BY `name`;

SELECT `name`, AVG(`points`) 'Điểm Trung Bình Cac Lop' FROM `ManagerStudent`.`Point` GROUP BY `name`;