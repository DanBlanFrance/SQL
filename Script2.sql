--create table employees

create table employees (
id serial primary key,
employee_name varchar(50) not null
);

-- add 70 rows to employees

insert into employees (employee_name)
values ('Smith'),
		('Johnson'),
		('Williams'),
		('Brown'),
		('Jones'),
		('Garcia'),
		('Miller'),
		('Davis'),
		('Rodriguez'),
		('Martinez'),
		('Hernandez'),
		('Lopez'),
		('Gonzalez'),
		('Wilson'),
		('Anderson'),
		('Thomas'),
		('Taylor'),
		('Moore'),
		 ('Jackson'),
		 ('Martin'),
		 ('Lee'),
		 ('Perez'),
		 ('Thompson'),
		 ('White'),
		 ('Harris'),
		 ('Sanchez'),
		 ('Clark'),
		 ('Ramirez'),
		 ('Lewis'),
		 ('Robinson'),
		 ('Walker'),
		 ('Young'),
		 ('Allen'),
		 ('King'),
		 ('Wright'),
		 ('Scott'),
		 ('Torres'),
		 ('Nguyen'),
		 ('Hill'),
		 ('Flores'),
		 ('Green'),
		 ('Adams'),
		 ('Nelson'),
		 ('Baker'),
		 ('Hall'),
		 ('Rivera'),
		 ('Campbell'),
		 ('Mitchell'),
		 ('Carter'),
		 ('Roberts'),		 
		 ('Schmidt'),
		 ('Schneider'),
		 ('Fischer'),
		 ('Weber'),
		 ('Meyer'),
		 ('Wagner'),
		 ('Becker'),
		 ('Hoffmann'),
		 ('Bauer'),
		 ('Koch'),		 
		 ('Schulz'),
		 ('Klein'),
		 ('Wolf'),
		 ('Richter'),
		 ('Braun'),
		 ('Neumann'),
		 ('Schmitt'),
		 ('Zimmermann'),
		 ('Beck'),
		 ('Meier');
		
-- create table salary
	
	create table salary (
		id serial primary key,
		monthly_salary int not null
		);
	
-- add 15 rows to salary 
	
insert into salary (monthly_salary)
values (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
	
--create table employee_salary 
	
create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

-- add 40 rows to employee_salary.
-- 30 with valid values, 10 with non-existent IDs

insert into employee_salary (employee_id , salary_id)
values (30,1),
		(29,2),
		(28,3),
		(27,4),
		(26,5),
		(25,6),
		(24,7),
		(23,8),
		(22,9),
		(21,10),
		(20,11),
		(19,12),
		(18,13),
		(17,14),
		(16,15),
		(15,16),
		(14,17),
		(13,18),
		(12,19),
		(11,20),
		(10,21),
		(9,22),
		(8,23),
		(7,24),
		(6,25),
		(5,26),
		(4,27),
		(3,28),
		(2,29),
		(1,30),
		(71,101),
		(72,100),
		(73,99),
		(74,98),
		(75,97),
		(76,96),
		(77,95),
		(78,94),
		(79,93),
		(80,92);
	
-- create table roles
	
create table roles (
id serial primary key,
role_name int not null unique
);

-- change data type from INT to Varchar

alter table roles 
alter column role_name type varchar(30);

-- add 20 rows to roles

insert into roles (role_name)
values ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
		
--create table roles_employee
--foreign key for table employees, field id
--foreign key for table roles, field id
	
create table roles_employee (
id serial primary key,
employee_id int not null unique,
role_id int not null ,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id) 
);

-- add 40 rows to roles_employee

insert into roles_employee (employee_id,role_id)
values (40,1),
		(39,2),
		(38,3),
		(37,4),
		(36,5),
		(35,6),
		(34,7),
		(33,8),
		(32,9),
		(31,10),
		(30,11),
		(29,12),
		(28,13),
		(27,14),
		(26,15),
		(25,16),
		(24,17),
		(23,18),
		(22,19),
		(21,20),
		(20,1),
		(19,19),
		(18,7),
		(17,2),
		(16,20),
		(15,8),
		(14,3),
		(13,18),
		(12,9),
		(11,4),
		(10,17),
		(9,10),
		(8,5),
		(7,16),
		(6,11),
		(5,6),
		(4,15),
		(3,12),
		(2,5),
		(1,14);
		
				

		
	

		
	
