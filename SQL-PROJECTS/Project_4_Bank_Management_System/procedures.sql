CREATE OR REPLACE PROCEDURE deposit_money (
    p_acc_no IN NUMBER,
    p_amount IN NUMBER
) AS
BEGIN
    UPDATE accounts
    SET balance = balance + p_amount
    WHERE acc_no = p_acc_no;

    INSERT INTO transactions
    VALUES (transactions_seq.NEXTVAL, p_acc_no, 'Deposit', p_amount, SYSDATE);

    COMMIT;
END;
/

-- Call procedure:

EXEC deposit_money(1001, 2000);

-- Procedure (Withdraw Money)

CREATE OR REPLACE PROCEDURE withdraw_money (
    p_acc_no IN NUMBER,
    p_amount IN NUMBER
) AS
    v_balance NUMBER;
BEGIN
    SELECT balance INTO v_balance
    FROM accounts
    WHERE acc_no = p_acc_no;

    IF v_balance >= p_amount THEN
        UPDATE accounts
        SET balance = balance - p_amount
        WHERE acc_no = p_acc_no;

        INSERT INTO transactions
        VALUES (transactions_seq.NEXTVAL, p_acc_no, 'Withdraw', p_amount, SYSDATE);

        COMMIT;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Insufficient Balance');
    END IF;
END;
/

-- Call:

EXEC withdraw_money(1001, 1000);