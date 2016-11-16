CREATE TABLE goods (
  id SERIAL PRIMARY KEY,
  name varchar(64) NOT NULL
);

INSERT INTO goods (name)
VALUES ('Яблоки');

INSERT INTO goods (name)
VALUES ('Яблоки');

INSERT INTO goods (name)
VALUES ('Груши');

INSERT INTO goods (name)
VALUES ('Яблоки');

INSERT INTO goods (name)
VALUES ('Апельсины');

INSERT INTO goods (name)
VALUES ('Груши');

SELECT * FROM GOODS;

SELECT (CASE WHEN a.id > b.id THEN '{' || a.id || ', ' || b.id || '}' 
        ELSE '{' || b.id || ', ' || a.id || '}' END)
FROM goods a
JOIN (SELECT * FROM goods) b
ON a.name = b.name AND a.id != b.id
GROUP BY (CASE WHEN a.id > b.id THEN '{' || a.id || ', ' || b.id || '}' 
        ELSE '{' || b.id || ', ' || a.id || '}' END);