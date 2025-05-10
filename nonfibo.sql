SET SERVEROUTPUT ON;
set verify off;

DECLARE
    fib1 NUMBER := 0;
    fib2 NUMBER := 1;
    fib3 NUMBER;
    num  NUMBER := 1;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Non-Fibonacci numbers from 1 to 10:');
    WHILE num <= 10 LOOP
        fib3 := fib1 + fib2;
        IF num = fib3 THEN
            fib1 := fib2;
            fib2 := fib3;
        ELSE
            DBMS_OUTPUT.PUT_LINE(num);
        END IF;
        num := num + 1;
    END LOOP;
END;
