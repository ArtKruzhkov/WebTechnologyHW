/*2. Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках.
В таблице должно быть четыре поля: id, name, age, address. 
Все поля в таблице обязательны для заполнения.
Необходимо добавить 5-10 одногруппников в данную таблицу.
Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), которые живут в Москве
и их возраст находится в диапазоне [18, 30) лет.*/

-- create
CREATE TABLE CLASSMATES (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  address TEXT NOT NULL
);

-- insert
INSERT INTO CLASSMATES (name, age, address) VALUES ('Egor', 30, 'Moscow');
INSERT INTO CLASSMATES (name, age, address) VALUES ('Evgeniy', 32, 'Moscow');
INSERT INTO CLASSMATES (name, age, address) VALUES ('Petr', 37, 'Tomsk');
INSERT INTO CLASSMATES (name, age, address) VALUES ('Maria', 18, 'Moscow');
INSERT INTO CLASSMATES (name, age, address) VALUES ('Kostya', 28, 'Moscow');
INSERT INTO CLASSMATES (name, age, address) VALUES ('Maxim', 31, 'Kazan');
INSERT INTO CLASSMATES (name, age, address) VALUES ('Dmitriy', 34, 'Samara');

-- fetch 
SELECT name 
FROM CLASSMATES 
WHERE address='Moscow' and age >= 18 and age < 30;