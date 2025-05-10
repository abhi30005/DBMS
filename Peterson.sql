SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
    num NUMBER := 145;  
    temp NUMBER;
    rem NUMBER;
    total NUMBER := 0;
    i NUMBER;
    fact NUMBER;
BEGIN
    temp := num;

    WHILE temp > 0 LOOP
        rem := MOD(temp, 10);

       
        fact := 1;
        FOR i IN 1..rem LOOP
            fact := fact * i;
        END LOOP;

        total := total + fact;
        temp := FLOOR(temp / 10);
    END LOOP;

    IF total = num THEN
        DBMS_OUTPUT.PUT_LINE(num || ' is a Peterson number.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(num || ' is NOT a Peterson number.');
    END IF;
END;
