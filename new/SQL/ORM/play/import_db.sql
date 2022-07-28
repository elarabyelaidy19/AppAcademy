CREATE TABLE plays ( 
    id INTEGER PRIMARY KEY, 
    title Text, 
    year integer,
    playwrights_id integer NOT NULL,

    FOREIGN KEY (playwrights_id) REFERENCES playwrights(id)
); 


CREATE TABLE playwrights ( 
    id INTEGER PRIMARY KEY, 
    name Text, 
    birth_date integer

);


INSERT INTO 
    playwrights(name, birth_date) 
VALUES 
    ('elaraby', 1997), 
    ('ali', 1997);


INSERT INTO 
    plays(title, year, playwrights_id) 
VALUES 
    ('a7ot w agry', 1997, (SELECT id from playwrights where name = 'elaraby')),
    ('a7ot w asseb', 1997, (SELECT id from playwrights where name = 'ali'));