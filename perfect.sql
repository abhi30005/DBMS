SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
  num NUMBER;
  total_sum NUMBER := 0;
  i  NUMBER;
BEGIN
  num := &num;

  FOR i IN 1 .. TRUNC(num / 2) LOOP
    IF MOD(num, i) = 0 THEN
      total_sum := total_sum + i;
    END IF;
  END LOOP;

  IF total_sum = num THEN
    DBMS_OUTPUT.PUT_LINE(num || ' is a Perfect Number');
  ELSE
    DBMS_OUTPUT.PUT_LINE(num || ' is NOT a Perfect Number');
  END IF;
END;
/
