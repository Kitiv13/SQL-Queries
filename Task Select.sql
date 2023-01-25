use hogwarts_characters;
select * from characters;
use hogwarts_library;
select * from library;
select fname, lname, patronus from characters where not patronus ='Unknown' and patronus is not null;
select lname from characters where lname like '%e';
Select avg(age) as Avg_age from characters;
select fname, lname, age from characters order by age desc;
select fname, age from characters where age between 50 and 100;
select distinct age from characters;
select * from characters where faculty = 'Gryffindor' and age > 30;
select distinct faculty from characters limit 3;
select fname from characters where fname like 'H____' or fname like 'L%';
delete from characters where char_id = 11;
select lname from characters where lname like '%a%';
select fname as Half_Blood_Prince from characters where fname = 'Severus';
select char_id, patronus from characters where not patronus = 'Unknown' and patronus is not null order by patronus asc;
select fname, lname from characters where lname in ('Crabbe', 'Granger','Diggory');
select min(age) as min_age from characters;
SELECT hogwarts_characters.characters.fname FROM hogwarts_characters.characters UNION SELECT hogwarts_library.library.book_name FROM hogwarts_library.library;
select count(char_id), faculty from characters group by faculty having count(char_id) > 1;
SELECT fname, lname,
CASE
    WHEN faculty = 'Gryffindor' THEN 'Godric'
    WHEN faculty = 'Slytherin' THEN 'Salazar'
    WHEN faculty = 'Ravenclaw' THEN 'Rowena'
    WHEN faculty = 'Hufflepuff' THEN 'Helga'
    ELSE 'Muggle'
END AS Founders
FROM characters;
SELECT lname 
FROM characters 
WHERE NOT lname REGEXP '^[HLS]';