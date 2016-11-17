CREATE TABLE t1 (
    id INT,
    credit INT);
    
CREATE TABLE t2 (
    id INT,
    s INT,
    dt TIMESTAMP,
    name VARCHAR(50));
    
INSERT INTO t1
VALUES (1, 24);

INSERT INTO t2
VALUES
 (1, 5, '10.24.2005', 'хлеб'),
 (1, 9, '10.19.2005', 'молоко'),
 (1, 3, '10.22.2005', 'гречка'),
 (1, 8, '10.04.2005', 'колбаса'),
 (1, 6, '10.18.2005', 'огурец'),
 (1, 5, '09.29.2005', 'холодец');