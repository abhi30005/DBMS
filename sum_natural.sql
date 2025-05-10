set SERVEROUTPUT on;
DECLARE
    sum1 NUMBER := 0;
    num NUMBER := 1;
BEGIN
    FOR num IN 1..10 LOOP
        sum1 := sum1 + num;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Sum of the first 10 natural numbers: ' || sum1);
END;
