CREATE TABLE BANKDATA123 (
    customer_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(50),
    age NUMBER,
    balance NUMBER,
    interest_rate NUMBER,
    IsVIP VARCHAR2(10)
);
INSERT INTO BANKDATA123 VALUES (1,'John Doe',31,15000,10,'FALSE');
INSERT INTO BANKDATA123 VALUES (2,'Robert Luna',22,8000,12,'FALSE');
INSERT INTO BANKDATA123 VALUES (3,'David Robinson',22,25000,11,'FALSE');
INSERT INTO BANKDATA123 VALUES (4,'John Reinhardt',25,5000,13,'FALSE');
INSERT INTO BANKDATA123 VALUES (5,'Betty Doe',65,20000,9,'FALSE');

COMMIT;

BEGIN
    FOR c IN (
        SELECT customer_id, age
        FROM BANKDATA123
    )
    LOOP
        IF c.age > 60 THEN
            UPDATE BANKDATA123
            SET interest_rate = interest_rate - 1
            WHERE customer_id = c.customer_id;
        END IF;
    END LOOP;

    COMMIT;
END;
/
UPDATE BANKDATA123
SET interest_rate = 9
WHERE customer_id = 5;

COMMIT;
SELECT customer_name, age, interest_rate
FROM BANKDATA123
WHERE age > 60;