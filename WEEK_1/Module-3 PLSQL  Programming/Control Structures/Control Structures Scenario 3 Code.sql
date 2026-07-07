
CREATE TABLE LOANS (
    loan_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(50),
    due_date DATE
);
INSERT INTO LOANS VALUES (1,'John Doe',SYSDATE+10);
INSERT INTO LOANS VALUES (2,'Robert Luna',SYSDATE+40);
INSERT INTO LOANS VALUES (3,'Betty Doe',SYSDATE+20);

COMMIT;
SELECT * FROM LOANS;
BEGIN
    FOR l IN (
        SELECT customer_name
        FROM LOANS
        WHERE due_date BETWEEN SYSDATE AND SYSDATE + 30
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Reminder: Loan due for ' || l.customer_name
        );
    END LOOP;
END;
/
SELECT customer_name, due_date
FROM LOANS
WHERE due_date BETWEEN SYSDATE AND SYSDATE + 30;