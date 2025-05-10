SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
  num NUMBER;
BEGIN
  -- Get user input
  num := &Enter_a_number_to_find_cube_root;
  
  DBMS_OUTPUT.PUT_LINE('Cube root of ' || num || ' is ' || ROUND(EXP(LN(num)/3), 2));
END;
/