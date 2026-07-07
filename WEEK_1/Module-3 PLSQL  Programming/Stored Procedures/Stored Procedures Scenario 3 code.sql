CREATE TABLE ACCOUNTS (
    account_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(50),
    balance NUMBER
);
INSERT INTO ACCOUNTS VALUES (101,'John Doe',10000);
INSERT INTO ACCOUNTS VALUES (102,'Robert Luna',5000);

COMMIT;
CREATE OR REPLACE PROCEDURE TransferFunds(
    from_acc IN NUMBER,
    to_acc IN NUMBER,
    amount IN NUMBER
)
IS
    source_balance NUMBER;
BEGIN
    SELECT balance
    INTO source_balance
    FROM ACCOUNTS
    WHERE account_id = from_acc;

    IF source_balance >= amount THEN

        UPDATE ACCOUNTS
        SET balance = balance - amount
        WHERE account_id = from_acc;

        UPDATE ACCOUNTS
        SET balance = balance + amount
        WHERE account_id = to_acc;

        COMMIT;

    END IF;
END;
/
EXEC TransferFunds(101,102,2000);
SELECT * FROM ACCOUNTS;