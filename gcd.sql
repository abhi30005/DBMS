SET SERVEROUTPUT ON;
set verify off;
DECLARE
    a NUMBER ;
    b NUMBER ;
BEGIN
    a:=&a;
    b:=&b;
    WHILE a != 0 AND b != 0 LOOP
        IF a > b THEN
            a := a - b;
        ELSE
            b := b - a;
        END IF;
    END LOOP;
    IF a != 0 THEN
        DBMS_OUTPUT.PUT_LINE('GCD is ' || a);
    ELSE
        DBMS_OUTPUT.PUT_LINE('GCD is ' || b);
    END IF;
END;
/