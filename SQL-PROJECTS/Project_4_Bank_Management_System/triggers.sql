CREATE OR REPLACE TRIGGER trg_update_balance
AFTER INSERT ON transactions
FOR EACH ROW
BEGIN
    IF :NEW.txn_type = 'Deposit' THEN
        UPDATE accounts
        SET balance = balance + :NEW.amount
        WHERE acc_no = :NEW.acc_no;
    ELSIF :NEW.txn_type = 'Withdraw' THEN
        UPDATE accounts
        SET balance = balance - :NEW.amount
        WHERE acc_no = :NEW.acc_no;
    END IF;
END;
/