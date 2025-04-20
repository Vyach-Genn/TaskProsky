/*Есть таблица book с колонками name и author_id и таблица author с колонками id и name.
     Вывести все книги определенного автора (author.name).*/


CREATE TABLE author
(
    id SERIAL PRIMARY KEY,
    name CHARACTER(50) NOT NULL
);
CREATE TABLE book
(
    name      CHARACTER(100) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES author (id)
);
INSERT INTO author(name, id) VALUES('AUTHOR1',1)
INSERT INTO author(name, id) VALUES('AUTHOR2',2)
INSERT INTO book(name, author_id) VALUES('book1',1);
INSERT INTO book(name, author_id) VALUES('book2',1);
INSERT INTO book(name, author_id) VALUES('book3',2);
INSERT INTO book(name, author_id) VALUES('book4',2);

SELECT book.name
FROM book
         JOIN author ON book.author_id = author.id
WHERE author.name = 'AUTHOR2';