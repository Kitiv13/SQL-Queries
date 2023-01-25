use hogwarts_characters;
select * from characters;
use hogwarts_library;
select * from library;
select hogwarts_characters.characters.fname, hogwarts_characters.characters.lname, hogwarts_library.library.book_name
from hogwarts_characters.characters join hogwarts_library.library on hogwarts_characters.characters.char_id = hogwarts_library.library.char_id 
order by hogwarts_characters.characters.fname;
select hogwarts_characters.characters.fname, hogwarts_characters.characters.lname, hogwarts_library.library.book_name
from hogwarts_characters.characters left join hogwarts_library.library on hogwarts_characters.characters.char_id = hogwarts_library.library.char_id 
order by hogwarts_characters.characters.fname;
select hogwarts_library.library.book_name, hogwarts_characters.characters.patronus from hogwarts_characters.characters 
left join hogwarts_library.library on hogwarts_characters.characters.char_id = hogwarts_library.library.char_id;
select hogwarts_characters.characters.fname, hogwarts_library.library.book_name, hogwarts_library.library.start_date, hogwarts_library.library.end_date
from hogwarts_characters.characters 
join hogwarts_library.library on hogwarts_characters.characters.char_id = hogwarts_library.library.char_id 
where hogwarts_characters.characters.age > 15;
select hogwarts_characters.characters.fname, hogwarts_library.library.book_name, hogwarts_library.library.start_date, hogwarts_library.library.end_date
from hogwarts_characters.characters 
join hogwarts_library.library on hogwarts_characters.characters.char_id = hogwarts_library.library.char_id 
where hogwarts_characters.characters.age < 15 and hogwarts_characters.characters.patronus = 'Unknown';
select count(hogwarts_library.library.book_id) from hogwarts_library.library
where hogwarts_library.library.end_date > (select hogwarts_library.library.end_date 
from hogwarts_library.library where hogwarts_library.library.char_id = 2);
select hogwarts_characters.characters.patronus from hogwarts_characters.characters 
where hogwarts_characters.characters.age > (select hogwarts_characters.characters.age from hogwarts_characters.characters 
where hogwarts_characters.characters.patronus = 'Unknown');