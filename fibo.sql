SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
  a NUMBER := -1;
  b NUMBER := 1;
  temp NUMBER;
  n NUMBER;
  i NUMBER;
BEGIN
  n := &Enter_number;
  FOR i IN 1..n LOOP
    temp := a + b;
    DBMS_OUTPUT.PUT_LINE(temp);
    a := b;
    b := temp;
  END LOOP;
END;
/