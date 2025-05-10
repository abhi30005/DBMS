SET SERVEROUTPUT ON;
set verify off;

DECLARE
  num NUMBER;
  temp NUMBER;
  rem NUMBER;
  sum1 NUMBER := 0;
  digits NUMBER := 0;
BEGIN
  num := &num;
  temp := num;
  WHILE temp > 0 LOOP
    temp := TRUNC(temp / 10);
    digits := digits + 1;
  END LOOP;
  temp := num;
  WHILE temp > 0 LOOP
    rem := MOD(temp, 10);
    sum1 := sum1 + POWER(rem, digits);
    temp := TRUNC(temp / 10);
  END LOOP;
  IF sum1 = num THEN
    DBMS_OUTPUT.PUT_LINE(num || ' is an Armstrong number.');
  ELSE
    DBMS_OUTPUT.PUT_LINE(num || ' is NOT an Armstrong number.');
  END IF;
END;
/
