SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
  n NUMBER;
  fact NUMBER := 1;
  i NUMBER;
BEGIN
  n := &Enter_a_number;
  
  FOR i IN 1..n LOOP
    fact := fact * i;
  END LOOP;
  
  DBMS_OUTPUT.PUT_LINE('Factorial of ' || n || ' is ' || fact);
END;
/