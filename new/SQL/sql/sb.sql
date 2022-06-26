INSERT INTO 
users (name, age, h) 
VALUES ('ahmed', 12, 170)


INSERT INTO 
bank (balance, deposit, withdraw) 
VALUES (20000, 20, 120)



UPDATE 
users 
SET name = 'ed stark', house = 'winterfil' 
WHERE name = 'ned stark'


UPDATE 
bank 
set balance = 0, withdraw = 200000 
where id = 123


DELETE FROM 
users 
WHERE name = 'ed stark' and house = 'winterfil' 

DELETE FOR 
bank 
WHERE id = 123


CREATE TABLE user ( 
    id Integer PRIMARY KEY, 
    name varchar(100) not NULL, 
    birth_date date, 
    house varchar(250),
    favporit_food varchar(20)
) 



SELECT team_member.name, manager.name 
from employee team_member 
join employee manager 
on team_member.id = manager.id 



