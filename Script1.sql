-- 1. Display all fields and all rows
select * from students;
-- 2. Display all students in the table
select name from students;
 --3.  Display only users' Id
select id from students;
 --4. Display only user name
 select name from students;
-- 5. Display users email only
select email from students;
 --6. Display users name and email
select name , email from students;
 --7. Display users' id, name, email and creation date
select  id , name , email , created_on from students;
 --8. Display users with password 12333
select * from students
where password = '12333';
 --9. Display users that were created 2021-03-26 00:00:00
select * from students
where created_on = '2021-03-26 00:00:00';
--10. Display users which have the word Anna in their name
select  * from students
where name like 'Anna%';
--11. Display users with a 8 at the end of their names
select * from students
where name like '%8';
--12. Display users with the letter "a" in their name
select * from students
where name like '%a%';
--13. Display users who were created 2021-07-12 00:00:00
select * from students
where created_on = '2021-07-12 00:00:00';
--14. Display the users that were created 2021-07-12 00:00:00 and have the password 1m313
select * from students
where created_on = '2021-07-12' and "password" = '1m313';
--15. Display the users that were created 2021-07-12 00:00:00 and have the word Andrey in their names
select * from students
where created_on = '2021-07-12 00:00:00' and name like 'Andrey%';
--16. Display the users that were created 2021-07-12 00:00:00 and have the number 8 in their names
select * from students
where created_on = '2021-07-12 00:00:00' and name like '%8%';
--17. Display users who have an id of 110
select * from students
where id='110';
--18. Display the user whose id is 153
select * from students
where id='153';
--19.  Display the user whose id is more than 140
select * from  students
where id>'140';
--20. Display the user whose id is less than 130
select * from  students
where id<'130';
--21. Display users who have id less than 127 or more than 188
select * from students
where id<'127' or id>'188';
--22. Display the user whose id is less or equal to 137
select * from students
where id<='137';
--23. Display users who have an id greater than or equal to 137
select * from students
where id>='137';
--24. Display the user who has an id greater than 180 but less than 190
select *from students
where id<'190' and id>'180';
--25. Display the user who has an id between 180 and 190
select *from students
where id between 180 and 190;
--26. Display users where password is 12333, 1m313, 123313
select * from students
where password='12333' or password='1m313' or password='123313';
--27. Display users where created_on is equal to 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select * from students
where created_on = '2020-10-03 00:00:00' or created_on = '2021-05-19 00:00:00' or created_on = '2021-03-26 00:00:00';
--28. Display the minimum id 
select min(id) as min_id from students;
--29. Display the maximum id 
select max(id) as max_id from students;
-- 30.Display number of users
select count(id) from students;
--31. Display user id, name, creation date of the user. Sort in ascending order of the date when the user was added.
select id , name , created_on from students
order by created_on asc ;
-- 32. Display the user id, name, user creation date. Sort in descending order by the date the user was added.
select id , name , created_on from students
order by created_on desc  ;