CREATE TABLE EMPLOYEES (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    department VARCHAR2(30),
    salary NUMBER
);
INSERT INTO EMPLOYEES VALUES (1,'Arun','IT',50000);
INSERT INTO EMPLOYEES VALUES (2,'Kumar','IT',60000);
INSERT INTO EMPLOYEES VALUES (3,'Priya','HR',45000);

COMMIT;
CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus(
    dept_name IN VARCHAR2,
    bonus_percent IN NUMBER
)
IS
BEGIN
    UPDATE EMPLOYEES
    SET salary = salary + (salary * bonus_percent/100)
    WHERE department = dept_name;

    COMMIT;
END;
/
EXEC UpdateEmployeeBonus('IT',10);
SELECT * FROM EMPLOYEES;