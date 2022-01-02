
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
		
				

		
--                                            --Part two--

--1. Display all employees whose salaries are in the database, together with their salaries.
	
select employee_name, monthly_salary from employee_salary 
	join employees on employee_salary.employee_id = employees.id
	join salary on employee_salary.salary_id = salary.id;

--2. Display all employees whose salary is less than 2,000.

select employee_name, salary.monthly_salary from employee_salary 
	join employees on employee_salary.employee_id = employees.id 
	join salary on employee_salary.salary_id = salary.id
	where salary.monthly_salary<2000;
	
--3. Display all salary positions, but the employee is not assigned to them. 
--There is a salary, but it is not clear who receives it

 select monthly_salary from employee_salary 
 	join employees on employee_salary.employee_id = employees.id 
 	join salary on employee_salary.salary_id = salary.id;
 
 --4. Display all salary positions <2000 , but the employee is not assigned to them. 
 --There is a salary, but it is not clear who receives it
 
select salary.monthly_salary from employee_salary 
	join employees on employee_salary.employee_id = employees.id 
	join salary on employee_salary.salary_id = salary.id 
	where salary.monthly_salary<2000;

--5. Find all employees without payroll

select employee_name from employee_salary 
right join employees on employee_salary.employee_id = employees.id 
 where employee_salary.employee_id is null;

--6. Display all employees with their job titles

select employee_name, role_name from roles_employee 
	join employees on roles_employee.employee_id = employees.id
	join roles on roles_employee.role_id = roles.id;
	
--7. Display names and job titles of Java developers only

select employee_name, role_name from roles_employee
	join employees on roles_employee.employee_id = employees.id 
	join roles on roles_employee.role_id = roles.id 
	where role_name like '%Java%' and not role_name like '%JavaScript%';

--8. Display names and job titles of Python developers only

select employee_name, role_name from roles_employee 
	join employees on roles_employee.employee_id = employees.id 
	join roles on roles_employee.role_id = roles.id 
	where role_name like '%Python%';

--9. Display names and job titles of all QA engineers

select employee_name, role_name from roles_employee 
	join employees on roles_employee.employee_id = employees.id 
	join roles on roles_employee.role_id = roles.id 
	where role_name like '%QA%';

 --10. Display names and job titles of all manual QA engineers

select employee_name, role_name from roles_employee 
	join employees on roles_employee.employee_id = employees.id 
	join roles on roles_employee.role_id = roles.id 
	where role_name like '%Manual%'and role_name like '%QA%';

--11. Display names and job titles of all automation QA engineers

select employee_name, role_name from roles_employee 
	join employees on roles_employee.employee_id = employees.id 
	join roles on roles_employee.role_id = roles.id 
	where role_name like '%Automation%' and role_name like '%QA%';

 --12. Display the names and salaries of Junior employees

--Precondition : create table employee_salary_new
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
-- role_id. Int, not null

create table employee_salary_new (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null,
	role_id int not null
);

insert into employee_salary_new (employee_id, salary_id, role_id)
values  (1, 1, 1),
		(3, 5, 3),
		(5, 10,5),
		(7, 15,7),
		(9, 2, 9),
		(11, 4, 11),
		(13, 6, 13),
		(15, 8, 15),
		(17, 10, 17),
		(19, 12, 19),
		(21, 14, 2),
		(23, 3, 4),
		(25, 6, 6),
		(27, 9, 8),
		(29, 11, 10),
		(31, 13, 12),
		(33, 15, 14),
		(35, 1, 16),
		(37, 1, 18),
		(39, 7, 20),
		(41, 1, 1),
		(43, 5, 4),
		(45, 10, 8),
		(47, 15, 5),
		(49, 2, 9),
		(51, 4, 6),
		(53, 6, 10),
		(55, 8, 11),
		(57, 10, 13),
		(59, 12, 17),
		(81, 14, 20),
		(83, 3, 19),
		(85, 6, 13),
		(87, 9, 1),
		(89, 11, 14),
		(91, 13, 9),
		(93, 15, 3),
		(95, 13, 8),
		(97, 9, 12),
		(99, 8, 2);
	
	select employee_name, monthly_salary, role_name from employee_salary_new 
	join employees on employee_salary_new.employee_id = employees.id 
	join salary on employee_salary_new.salary_id = salary.id 
	join roles on employee_salary_new.role_id = roles.id
	where role_name like '%Junior%';

 --13. Display the names and salaries of Middle techs

select employee_name, monthly_salary, role_name from employee_salary_new 
	join employees on employee_salary_new.employee_id = employees.id 
	join salary on employee_salary_new.salary_id = salary.id 
	join roles on employee_salary_new.role_id = roles.id
	where role_name like '%Middle%';

--14. Display the names and salaries of Senior techs

select employee_name, monthly_salary, role_name from employee_salary_new 
	join employees on employee_salary_new.employee_id = employees.id 
	join salary on employee_salary_new.salary_id = salary.id 
	join roles on employee_salary_new.role_id = roles.id
	where role_name like '%Senior%';

--15. Display the salaries of Java developers

select role_name, monthly_salary from employee_salary_new
	join roles on employee_salary_new.role_id = roles.id
	join salary on employee_salary_new.salary_id = salary.id 
	where role_name like '%Java%' and not role_name like '%JavaScript%';

--16. Display the salaries of Python developers

select role_name, monthly_salary from employee_salary_new 
	join roles on employee_salary_new.role_id = roles.id
	join salary on employee_salary_new.salary_id = salary.id 
	where role_name like '%Python%';

--17. Display the names & salaries of Junior Python developers

select employee_name, monthly_salary, role_name from employee_salary_new 
	join employees on employee_salary_new.employee_id = employees.id 
	join salary on employee_salary_new.salary_id = salary.id 
	join roles on employee_salary_new.role_id = roles.id
	where role_name like '%Junior%' and role_name like '%Python%'

--18. Display the names & salaries of the Middle JS developers

select employee_name, monthly_salary, role_name from employee_salary_new
	join employees on employee_salary_new.employee_id = employees.id 
	join salary on employee_salary_new.salary_id = salary.id 
	join roles on employee_salary_new.role_id = roles.id
	where role_name like '%Middle%' and role_name like '%JavaScript%';

 --19. Display the names & salaries of the Senior Java developers

select employee_name, monthly_salary, role_name from employee_salary_new 
	join employees on employee_salary_new.employee_id = employees.id 
	join salary on employee_salary_new.salary_id = salary.id 
	join roles on employee_salary_new.role_id = roles.id
	where role_name like '%Senior%' and role_name like '%Java%' and not role_name like '%JavaScript%';

--20. Display the salaries of Junior QA engineers

 select role_name, monthly_salary from employee_salary_new
	join roles on employee_salary_new.role_id = roles.id
	join salary on employee_salary_new.salary_id = salary.id 
	where role_name like '%Junior%' and role_name like '%QA%';

--21. Display the average salary of all Junior employees

select AVG (monthly_salary) from employee_salary_new 
	 join salary on employee_salary_new.salary_id = salary.id
	 join roles on employee_salary_new.role_id = roles.id
	 where role_name like '%Junior%';
	
--22. Display the total amount of JS developers' salaries

select SUM (monthly_salary) from employee_salary_new
	join salary on employee_salary_new.salary_id = salary.id 
	join roles on employee_salary_new.role_id = roles.id 
	where role_name like '%JavaScript%';

-- 23. Display the minimum salary of QA engineers

select MIN (monthly_salary) from employee_salary_new
	join salary on employee_salary_new.salary_id = salary.id 
	join roles on employee_salary_new.role_id = roles.id 
	where role_name like '%QA%';

--24. Display the maximum salary of QA engineers

select MAX (monthly_salary) from employee_salary_new 
	join salary on employee_salary_new.salary_id = salary.id 
	join roles on employee_salary_new.role_id = roles.id 
	where role_name like '%QA%';

--25. Display number of QA engineers

select COUNT (role_name) from roles_employee
	join employees on roles_employee.employee_id = employees.id 
	join roles on roles_employee.role_id = roles.id 
	where role_name like '%QA%';

 --26. Display the number of Middle techs.

select COUNT (role_name) from roles_employee
	join employees on roles_employee.employee_id = employees.id 
	join roles on roles_employee.role_id = roles.id
	where role_name like '%Middle%';

--27. Display the number of developers

select COUNT (role_name) from roles_employee
	join employees on roles_employee.employee_id = employees.id 
	join roles on roles_employee.role_id = roles.id
	where role_name like '%developer%';

 --28. Display the total amount of developers' salaries

select SUM (monthly_salary) from employee_salary_new
	join salary on employee_salary_new.salary_id = salary.id 
	join roles on employee_salary_new.role_id = roles.id 
	where role_name like '%developer%';

--29. Display the names, job titles and salaries of all employees in ascending order

select employee_name, role_name, monthly_salary from employee_salary_new 
	join employees on employee_salary_new.employee_id = employees.id 
	join roles on employee_salary_new.role_id = roles.id 
	join salary on employee_salary_new.salary_id = salary.id 
	order by monthly_salary asc;
	
--30. Display the names, job titles and salaries of all employees in ascending order
--    with employees whose salaries are from 1700 to 2300

select employee_name, role_name, monthly_salary from employee_salary_new
	join employees on employee_salary_new.employee_id = employees.id 
	join roles on employee_salary_new.role_id = roles.id 
	join salary on employee_salary_new.salary_id = salary.id 
	where monthly_salary between 1700 and 2300 order by monthly_salary asc;
	
 --31. Display the names, job titles and salaries of all employees in ascending order 
 --    with employees whose salaries are less than 2300

select employee_name, role_name, monthly_salary from employee_salary_new
	join employees on employee_salary_new.employee_id = employees.id 
	join roles on employee_salary_new.role_id = roles.id 
	join salary on employee_salary_new.salary_id = salary.id 
	where  monthly_salary <2300 order by monthly_salary asc;
	
 --32. Display the names, job titles and salaries of all employees in ascending order 
 --    with employees whose salaries are 1,100, 1,500, 2,000

select employee_name, role_name, monthly_salary from employee_salary_new
	join employees on employee_salary_new.employee_id = employees.id 
	join roles on employee_salary_new.role_id = roles.id 
	join salary on employee_salary_new.salary_id = salary.id 
	where  monthly_salary in (1100, 1500, 2000);